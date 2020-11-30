import 'package:dartz/dartz.dart';
import 'package:fhir/r4.dart';
import 'package:fhir_db/resource_dao.dart';

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
      String resourceType) async {
    List<Resource> resultList;
    try {
      resultList =
          await resourceDao.getAllSortedById(null, resourceType: resourceType);
    } catch (error) {
      return left(DbFailure.unableToObtainList(error: error.toString()));
    }
    return right(resultList);
  }

  Future<Either<DbFailure, List<Resource>>> returnPatientImmunizationHistory(
      String patientId) async {
    return await searchFunction(
        'Immunization', 'patient.reference', 'Patient/$patientId');
  }

  Future<Either<DbFailure, List<Resource>>> returnPatientPastDeworming(
      String patientId) async {
    return await searchFunction(
        'MedicationAdministration', 'subject.reference', 'Patient/$patientId');
  }

  Future<Either<DbFailure, List<Resource>>> searchFunction(
      String resourceType, String searchString, String reference) async {
    List<Resource> resultList;
    try {
      resultList = await resourceDao.searchFor(
          null, resourceType, searchString, reference);
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
