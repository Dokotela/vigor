import 'package:fhir/fhir_r4.dart';
import 'package:sembast/sembast.dart';

import 'fhir_db.dart';
part 'resource_dao_save.dart';

class ResourceDao {
  ResourceDao();
  StoreRef<String, Map<String, dynamic>> _resourceStore;

  Future<Database> get _db async => FhirDb.instance.database;

  //allows a store per resourceType (one for Patient, one for Observation, etc.)
  void _setStoreType(String resourceType) =>
      _resourceStore = stringMapStoreFactory.store(resourceType);

  void _addResourceType(String resourceType) =>
      FhirDb.instance.addResourceType(resourceType);

  void _removeResourceTypes(List<String> types) =>
      FhirDb.instance.removeResourceTypes(types);

  //get list of resourceTypes stored in DB
  List<String> _getResourceTypes() => FhirDb.instance.getResourceTypes();

  //checks if the resource already has an id, all resources downloaded should
  //have an id, and all resources already saved will have an id, so only brand
  //spanking new resources won't
  Future<Resource> save(Resource resource) async {
    if (resource != null) {
      if (resource?.resourceType != null) {
        _setStoreType(resource.resourceType);
        _addResourceType(resource.resourceType);
        return resource.id == null
            ? await _insert(resource)
            : await _update(resource);
      } else {
        throw const FormatException('ResourceType cannot be null');
      }
    } else {
      throw const FormatException('Resource to save cannot be null');
    }
  }

  //if no id, it will call _getIdAndMeta to provide the new (local, temporary
  // id) along with creating a metadata about the resource history, and then
  //returning that resource
  Future<Resource> _insert(Resource resource) async {
    final _newResource = _newVersion(resource);
    await _resourceStore
        .record(_newResource.id.toString())
        .put(await _db, _newResource.toJson());
    return _newResource;
  }

  //looks to see if id is found for that type of resource, if it isn't (e.g.
  //when the resource is downloaded from the server), it will simply save that
  //resource into the db. If a version is found, it will save that old version
  //into the _history db store, then update the meta field in the current
  //resource, and then save that resource and return it
  Future<Resource> _update(Resource resource) async {
    final finder = Finder(filter: Filter.byKey(resource.id.toString()));
    final oldResource =
        await _resourceStore.record(resource.id.toString()).get(await _db);
    if (oldResource == null) {
      await _resourceStore
          .record(resource.id.toString())
          .put(await _db, resource.toJson());
      return resource;
    } else {
      _setStoreType('_history');
      _addResourceType('_history');
      await _resourceStore.add(await _db, oldResource);
      _setStoreType(resource.resourceType);
      _addResourceType(resource.resourceType);
      final _newResource = _newVersion(resource);
      await _resourceStore.update(await _db, _newResource.toJson(),
          finder: finder);
      return _newResource;
    }
  }

  //pass in a resourceType or a resource, and db will delete all resources of
  //that type - Note: will NOT delete any _historical stores (must pass in
  //'_history' as the type for this to happen)
  Future deleteSingleType({String resourceType, Resource resource}) async {
    final type = resourceType ?? resource?.resourceType ?? '';
    if (type.isNotEmpty) {
      _setStoreType(resourceType);
      await _resourceStore.delete(await _db);
      _removeResourceTypes([resourceType]);
    }
  }

  //Deletes all resources, including historical versions
  Future deleteAllResources() async {
    final resourceTypes = _getResourceTypes();
    for (var type in resourceTypes) {
      _setStoreType(type);
      await _resourceStore.delete(await _db);
    }
    _removeResourceTypes(resourceTypes);
  }

  //Delete specific resource
  Future delete(Resource resource) async {
    _setStoreType(resource.resourceType);
    final finder = Finder(filter: Filter.equals('id', '${resource.id}'));
    await _resourceStore.delete(await _db, finder: finder);
  }

  //return all resources in the DB, including historical versions
  Future<List<Resource>> getAllResources() async {
    final resourceTypes = _getResourceTypes();
    final resourceList = <Resource>[];
    for (final resource in resourceTypes) {
      final partialList = await getAllSortedById(resourceType: resource);
      partialList.forEach(resourceList.add);
    }
    return resourceList;
  }

  //returns all resources of a specific type
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

  //specific search function to search for a resource by id, passes this
  //finder to _search
  Future find({Resource resource, Finder oldFinder}) async {
    final finder =
        oldFinder ?? Finder(filter: Filter.equals('id', '${resource.id}'));
    _setStoreType(resource.resourceType);
    return _search(finder);
  }

  //more general search, can pass in other values other than id, but I haven't
  //done a lot of work or testing with this
  Future<List<Resource>> searchFor(
      String resourceType, String field, String value) async {
    _setStoreType(resourceType);
    final finder = Finder(filter: Filter.equals(field, value));
    return await _search(finder);
  }

  //ultimate search function, must pass in finder
  Future<List<Resource>> _search(Finder finder) async {
    final recordSnapshots =
        await _resourceStore.find(await _db, finder: finder);

    return recordSnapshots.map((snapshot) {
      final resource = Resource.fromJson(snapshot.value);
      return resource;
    }).toList();
  }
}
