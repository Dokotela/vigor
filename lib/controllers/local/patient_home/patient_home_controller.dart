import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import '../../../models/data/patient_model.dart';

import 'shared/relative_age.dart';

class PatientHomeController extends GetxController
    with SingleGetTickerProviderMixin {
  /// PROPERTIES
  final patient = PatientModel(patient: Get.arguments);
  final RxInt _tabIndex = 0.obs;

  /// SETTER FUNCTIONS
  set tabIndex(int value) => _tabIndex.value = value;

  /// GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String relativeAge() => sharedRelativeAge(patient.birthDate());

  int get tabIndex => _tabIndex.value;

  /// EVENTS
  void editPatient() =>
      Get.offNamed(AppRoutes.PATIENT_REGISTRATION, arguments: patient);
}
