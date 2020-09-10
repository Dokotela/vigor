import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sqflite/sembast_sqflite.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

class FhirDb {
  FhirDb._();
  static final FhirDb _db = FhirDb._();
  static FhirDb get instance => _db;
  List<String> resourceTypes = [];

  void addResourceType(String resourceType) {
    if (!resourceTypes.contains(resourceType)) {
      resourceTypes.add(resourceType);
    }
  }

  void removeResourceTypes(List<String> typesToDelete) =>
      resourceTypes.removeWhere((type) => typesToDelete.contains(type));

  List<String> getResourceTypes() => resourceTypes;

  Completer<Database> _dbOpenCompleter;

  Future<Database> get database async {
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
      _openDatabase();
    }

    return _dbOpenCompleter.future;
  }

  Future _openDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, 'fhir.db');
    final dbFactory = getDatabaseFactorySqflite(sqflite.databaseFactory);
    final database = await dbFactory.openDatabase(dbPath);

    _dbOpenCompleter.complete(database);
  }
}
