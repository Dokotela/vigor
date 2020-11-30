import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';

import '../../../models/data/patient_model.dart';
import '../../../routes/routes.dart';
import 'shared/relative_age.dart';

class PatientHomeController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel(patient: Get.arguments).obs;
  final _fullVaxDates = <String, Set<FhirDateTime>>{}.obs;

  /// INIT

  /// GETTER FUNCTIONS
  String name() => _patient.value.name();
  String id() => _patient.value.id();
  String sex() => _patient.value.sex();
  String birthDate() => _patient.value.birthDate();
  String relativeAge() => sharedRelativeAge(_patient.value.birthDate());
  Map<String, Set<FhirDateTime>> immHx() => _fullVaxDates;
  PatientModel actualPatient() => _patient.value;

  /// SETTER FUNCTIONS
  Future<bool> loadImmunizations() async {
    await _patient.value.loadImmunizations();
    _fullVaxDates.value = _patient.value.immHx;
    return true;
  }

  /// EVENTS
  void editPatient() =>
      Get.toNamed(AppRoutes.PATIENT_REGISTRATION, arguments: _patient.value);
}
