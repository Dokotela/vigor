import 'package:fhir/fhir_r4.dart';
import 'package:vigor/infrastructure/fhir_db/fhir_db.dart';
import 'package:vigor/infrastructure/fhir_db/resource_dao.dart';

Future<void> main() async {
  await FhirDb.instance.database;
  final resourceDao = ResourceDao();
  final patient = Patient(
    resourceType: 'Patient',
    id: Id('12345'),
  );
  resourceDao.save(patient);
}
