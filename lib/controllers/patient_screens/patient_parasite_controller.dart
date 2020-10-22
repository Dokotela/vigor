import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/interfaces/i_fhir_db.dart';

import '../../models/patient_model.dart';
import '../../views/screens.dart';
import 'shared/relative_age.dart';

class PatientParasiteController extends GetxController {
  // PROPERTIES
  final PatientModel patient = PatientModel(patient: Get.arguments);
  final dewormingHistory = <Resource>[].obs;

  // INIT
  @override
  void onInit() {
    final iFhirDb = IFhirDb();
    iFhirDb.returnPatientPastDeworming(patient.id()).then((result) {
      result.fold((ifLeft) => Get.snackbar('Error', '${ifLeft.error}'),
          (ifRight) => dewormingHistory.value = ifRight);
    });
    super.onInit();
  }

  // SETTER FUNCTIONS

  // GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String relativeAge() => sharedRelativeAge(patient.birthDate());

  // FUNCTIONS
  void editPatient() =>
      Get.off(PatientRegistrationScreen(), arguments: patient.patient);
}
