import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import '../../../models/data/patient_model.dart';

import 'shared/relative_age.dart';

class PatientHomeController extends GetxController {
  /// PROPERTIES
  final patient = PatientModel(patient: Get.arguments);

  /// Init
  @override
  Future onInit() async {
    await patient.loadImmunizations();
    patient.getDrRecommendation();
    patient.immHx.forEach((k, v) => print('$k: ${v.value1} - ${v.value2}'));
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String relativeAge() => sharedRelativeAge(patient.birthDate());

  /// EVENTS
  void editPatient() =>
      Get.toNamed(AppRoutes.PATIENT_REGISTRATION, arguments: patient);
}
