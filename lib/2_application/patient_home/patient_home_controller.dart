import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fhir/fhir_r4.dart' as r4;
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/formatters/basic_enum_to_string.dart';
import 'package:vigor/3_domain/formatters/patient_name.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';

class PatientHomeController extends GetxController {
  final r4.Patient patient = Get.arguments;

  String patientName() => lastCommaGivenName(patient.name[0]);
  String patientId() => patient.id.toString();
  String patientSex() => basicEnumToString(patient.gender);
  String patientBirthDate() => simpleDate(patient.birthDate);

  void editPatient() => Get.off(PatientRegistration(), arguments: patient);
}
