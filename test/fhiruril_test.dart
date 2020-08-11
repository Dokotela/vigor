import 'dart:convert';

import 'package:fhir/fhir_r4.dart';
import 'package:vigor/3_domain/formatters/format_patient_contact.dart';

void main() {
  final jsonMap = {
    'resourceType': 'Patient',
    'name': [
      {
        'family': 'get',
        'given': ['get']
      }
    ],
    'birthDate': '2020-08-05T00:00:00.000',
    'address': [
      {'district': 'Filiu'}
    ],
  };
  final patient = Patient.fromJson(jsonMap);
  final againPatient = patient.copyWith(contact: [
    formatPatientContact(
      'Faulkenberry',
      'Grey',
      'Puerto Rico',
      'brother',
    )
  ]);
  print(jsonEncode(againPatient.toJson()));
}
