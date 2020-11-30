import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import '../../../models/data/patient_model.dart';

import 'shared/relative_age.dart';

class EnterVaxDatesController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel(patient: Get.arguments).obs;

  /// Init
  // @override
  // Future onInit() async {
  //   await patient.value.loadImmunizations();
  //   patient.value.getDrRecommendation();
  //   // patient.value.immHx
  //   //     .forEach((k, v) => print('$k: ${v.value1} - ${v.value2}'));
  //   super.onInit();
  // }

  /// GETTER FUNCTIONS
  String name() => _patient.value.name();
  String id() => _patient.value.id();
  String sex() => _patient.value.sex();
  String birthDate() => _patient.value.birthDate();
  String relativeAge() => sharedRelativeAge(_patient.value.birthDate());
  Map<String, Set<FhirDateTime>> immHx() => _patient.value.immHx;
  Future loadImmunizations() async => await _patient.value.loadImmunizations();

  /// EVENTS
  void editPatient() =>
      Get.toNamed(AppRoutes.PATIENT_REGISTRATION, arguments: _patient.value);
}
