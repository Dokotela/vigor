import 'package:dartz/dartz.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/models/data/patient_model.dart';
import 'package:vigor/models/data/vaccine_display.dart';
import 'package:vigor/routes/routes.dart';

class PatientImmController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final _display = VaccineDisplay().obs;
  var isReady = false.obs;

  /// INIT
  @override
  Future onInit() async {
    _patient.value = Get.arguments;
    _display.value.birthdate = birthDate();
    await _patient.value.loadImmunizations();
    setDisplay();
    super.onInit();
    isReady.value = true;
  }

  /// GETTER FUNCTIONS
  String name() => _patient.value.name();
  String birthDate() => _patient.value.birthDate();
  Map<String, Set<Immunization>> immHx() => _display.value.fullVaxDates;
  Either<DoseDisplay, String> display(String dz, int number) =>
      _display.value.matrix[dz][number];

  PatientModel actualPatient() => _patient.value;

  /// SETTER FUNCTIONS
  Future loadImmunizations() => _patient.value.loadImmunizations();

  void setDisplay() {
    _display.value.fullVaxDates = _patient.value.immHx;
    _display.value.setDisplayDates();
    _display.value.checkValidityOfDoses();
  }

  /// EVENTS
  Future addNew(String cvx, FhirDateTime date) async {
    await _patient.value.addNewVaccine(cvx, date);
    setDisplay();
  }

  // Future deleteVaccine(String cvx, FhirDateTime date) async {
  //   await _patient.value.deleteVaccine(cvx, date);
  //   update();
  // }

  // Future updateVaccine(
  //     String cvx, FhirDateTime current, FhirDateTime original) async {
  //   await _patient.value.updateVaccine(cvx, current, original);
  //   update();
  // }

  void editPatient() =>
      Get.toNamed(AppRoutes.NEW_PATIENT, arguments: _patient.value);

  void editDates(String text, String dz) =>
      Get.toNamed(AppRoutes.VAX_DATES, arguments: [text, dz]);

  // void recordNew(DateTime newDate, String dz) =>
  //     _fullVaxDates[dz].add(FhirDateTime(newDate));
}
