import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/models/patient_model.dart';

class PatientHomeController extends GetxController {
  // PROPERTIES
  final PatientModel patient = PatientModel(patient: Get.arguments);

  // INIT
  @override
  void onInit() {
    super.onInit();
  }

  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();

  void editPatient() =>
      Get.off(PatientRegistration(), arguments: patient.patient);
}
