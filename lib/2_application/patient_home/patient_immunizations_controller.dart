import 'package:fhir/fhir_r4.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/3_domain/models/patient_model.dart';

class PatientImmunizationsController extends GetxController {
  // PROPERTIES
  final PatientModel patient = PatientModel(patient: Get.arguments);
  final immRecs = <ImmunizationRecommendationRecommendation>[].obs;

  // INIT
  @override
  Future onInit() async {
    patient.loadImmunizations();
    await patient.getImmunizationRecommendation();
    patient.recommendation.recommendation.forEach(immRecs.add);
    super.onInit();
  }

  // SETTER FUNCTIONS

  // GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String vaccineRecommendation(int index) {
    if (immRecs.value[index].forecastStatus.coding[0].code ==
        Code('notComplete')) {
      final returnString = immRecs.value[index].vaccineCode != null
          ? immRecs.value[index].vaccineCode[0].coding != null
              ? immRecs.value[index].vaccineCode[0].coding[0].display
              : ''
          : '';
      final dateString = immRecs.value[index].dateCriterion
          .firstWhere((criteria) => criteria?.code?.coding != null
              ? criteria.code.coding[0].code == Code('30981-5')
              : false)
          .value
          .toString();

      return '$returnString $dateString';
    } else
      return '';
  }

  // FUNCTIONS
  void editPatient() =>
      Get.off(PatientRegistrationScreen(), arguments: patient.patient);
}
