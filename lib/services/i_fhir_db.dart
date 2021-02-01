import 'package:dartz/dartz.dart';
import 'package:fhir/r4.dart';
import 'package:fhir_db/r4.dart';

import '../models/failures/db_failures.dart';

class IFhirDb {
  IFhirDb();
  final ResourceDao resourceDao = ResourceDao();

  Future<Either<DbFailure, Resource>> save(Resource resource) async {
    Resource resultResource;
    try {
      resultResource = await resourceDao.save(null, resource);
    } catch (error) {
      return left(DbFailure.unableToSave(error: error.toString()));
    }
    return right(resultResource);
  }

  Future<Either<DbFailure, List<Resource>>> returnListOfSingleResourceType(
      R4ResourceType resourceType) async {
    List<Resource> resultList;
    try {
      resultList = await resourceDao
          .getResourceType(null, resourceTypes: [resourceType]);
    } catch (error) {
      return left(DbFailure.unableToObtainList(error: error.toString()));
    }
    return right(resultList);
  }

  Future<Either<DbFailure, List<Resource>>> returnPatientImmunizationHistory(
      String patientId) async {
    var temp = await searchFunction(
        R4ResourceType.Immunization, 'patient.reference', 'Patient/$patientId');
    return temp;
  }

  Future<Either<DbFailure, List<Resource>>> returnPatientPastDeworming(
      String patientId) async {
    return await searchFunction(R4ResourceType.MedicationAdministration,
        'subject.reference', 'Patient/$patientId');
  }

  Future<Either<DbFailure, List<Resource>>> searchFunction(
      R4ResourceType resourceType, String field, String value) async {
    List<Resource> resultList;
    try {
      resultList = await resourceDao.find(
        null,
        resourceType: resourceType,
        field: field,
        value: value,
      );
    } catch (error) {
      return left(DbFailure.unableToObtainList(error: error.toString()));
    }
    return right(resultList);
  }

  Future<Either<DbFailure, Unit>> deleteAll() async {
    try {
      await resourceDao.deleteAllResources(null);
    } catch (error) {
      return left(DbFailure.unableToDeleteAll(error: error.toString()));
    }
    return right(unit);
  }
}
