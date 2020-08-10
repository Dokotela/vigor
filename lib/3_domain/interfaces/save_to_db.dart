import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:vigor/3_domain/models/db_failures.dart';
import 'package:vigor/4_infrastructure/fhir_db/resource_dao.dart';

class SaveResource {
  SaveResource(this.resource);

  final Resource resource;
  final ResourceDao resourceDao = ResourceDao();

  Future<Either<DbFailure, Unit>> toDb() async {
    try {
      resourceDao.save(resource);
    } catch (error) {
      return left(DbFailure.unableToSave(error: error.toString()));
    }
    return right(unit);
  }
}
