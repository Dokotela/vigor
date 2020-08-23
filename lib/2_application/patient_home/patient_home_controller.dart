import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/models/patient_model.dart';

class PatientHomeController extends GetxController {
  // PROPERTIES
  final PatientModel patient = PatientModel(patient: Get.arguments);

  // INIT

  // SETTER FUNCTIONS

  // GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();

  // FUNCTIONS
  void editPatient() =>
      Get.off(PatientRegistrationScreen(), arguments: patient.patient);

  void parasiteScreen() =>
      Get.to(PatientParasite(), arguments: patient.patient);

  void immunizationScreen() =>
      Get.to(PatientImmunizations(), arguments: patient.patient);
}
