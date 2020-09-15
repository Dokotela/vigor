import 'package:fhir/fhir_r4.dart';

void main() {
  final patient =
      Patient(resourceType: 'Patient', gender: PatientGender.female);
  print(patient.gender.runtimeType);
  print(patient.gender
      .toString()
      .replaceFirst('${patient.gender.runtimeType}.', ''));
}
