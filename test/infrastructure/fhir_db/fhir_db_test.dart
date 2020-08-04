import 'package:fhir/fhir_r4.dart';
import 'package:vigor/infrastructure/fhir_db/fhir_db.dart';
import 'package:vigor/infrastructure/fhir_db/resource_dao.dart';

void main() async {
  await FhirDb.instance.database;
  ResourceDao resourceDao = ResourceDao();
  Patient patient = Patient(
    resourceType: 'Patient',
    id: Id('12345'),
  );
  resourceDao.save(patient);
}
