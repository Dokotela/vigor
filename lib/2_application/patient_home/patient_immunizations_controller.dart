import 'package:fhir/fhir_r4.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/3_domain/interfaces/i_fhir_db.dart';
import 'package:vigor/3_domain/models/patient_model.dart';

class PatientImmunizationsController extends GetxController {
  // PROPERTIES
  final PatientModel patient = PatientModel(patient: Get.arguments);
  final pastImmunizations = <Resource>[].obs;

  // INIT
  @override
  void onInit() {
    final iFhirDb = IFhirDb();
    iFhirDb.returnPatientImmunizationHistory(patient.id()).then((result) {
      result.fold((ifLeft) => Get.snackbar('Error', '${ifLeft.error}'),
          (ifRight) => pastImmunizations.value = ifRight);
    });
    super.onInit();
  }

  // SETTER FUNCTIONS

  // GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String vaccineInfo(int index) {
    final Immunization immunization = pastImmunizations.value[index];
    return '${simpleFhirDateTime(immunization.occurrenceDateTime)}'
        ' Cvx: ${immunization.vaccineCode.text}';
  }

  // FUNCTIONS
  void editPatient() =>
      Get.off(PatientRegistration(), arguments: patient.patient);
}
