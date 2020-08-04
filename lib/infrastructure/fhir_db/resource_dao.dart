import 'package:fhir/fhir_r4.dart';
import 'package:sembast/sembast.dart';

import 'fhir_db.dart';
part 'resource_dao_save.dart';

class ResourceDao {
  StoreRef<String, Map<String, dynamic>> _resourceStore;

  ResourceDao();

  void _setStoreType(String resourceType) =>
      _resourceStore = stringMapStoreFactory.store(resourceType);

  Future<Database> get _db async => FhirDb.instance.database;

  //checks if the resource already has an id, all resources downloaded should
  //have an id, and all resources already saved will have an id, so only brand
  //spanking new resources won't
  Future save(Resource resource) async {
    if (resource != null && resource?.resourceType != null) {
      _setStoreType(resource.resourceType);
      resource.id == null ? await _insert(resource) : await _update(resource);
    }
  }

  //if no id, it will call _getIdAndMeta to provide the new (local, temporary
  // id) along with creating a metadata about the resource history
  Future _insert(Resource resource) async {
    final _newResource = _getIdAndMeta(resource);
    await _resourceStore
        .record(_newResource.id.toString())
        .put(await _db, _newResource.toJson());
  }

  Future _update(Resource resource) async {
    final finder = Finder(filter: Filter.byKey(resource.id.toString()));
    final oldResource =
        await _resourceStore.record(resource.id.toString()).get(await _db);
    if (oldResource == null) {
      await _insert(resource);
    } else {
      _setStoreType('_history');
      await _resourceStore.add(await _db, oldResource);
      _setStoreType(resource.resourceType);
      final oldMeta =
          Meta.fromJson(oldResource['meta'] as Map<String, dynamic>);
      final _newResource = _newVersion(resource, oldMeta: oldMeta);
      await _resourceStore.update(await _db, _newResource.toJson(),
          finder: finder);
    }
  }

  Future find({Resource resource, Finder oldFinder}) async {
    final finder =
        oldFinder ?? Finder(filter: Filter.equals('id', '${resource.id}'));
    _setStoreType(resource.resourceType);
    return _search(finder);
  }

  Future delete(Resource resource) async {
    _setStoreType(resource.resourceType);
    final finder = Finder(filter: Filter.equals('id', '${resource.id}'));
    await _resourceStore.delete(await _db, finder: finder);
  }

  Future deleteAll({String resourceType, Resource resource}) async {
    final type = resourceType ?? resource?.resourceType ?? '';
    if (type.isNotEmpty) {
      _setStoreType(type);
      await _resourceStore.delete(await _db);
    }
  }

  Future<List<Resource>> getAllSortedById(
      {String resourceType, Resource resource}) async {
    final type = resourceType ?? resource?.resourceType ?? '';
    if (type.isNotEmpty) {
      _setStoreType(type);
      final finder = Finder(sortOrders: [SortOrder('id')]);
      return _search(finder);
    }
    return [];
  }

  Future<List<Resource>> _search(Finder finder) async {
    final recordSnapshots =
        await _resourceStore.find(await _db, finder: finder);

    return recordSnapshots.map((snapshot) {
      final resource = Resource.fromJson(snapshot.value);
      return resource;
    }).toList();
  }
}
