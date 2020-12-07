import 'package:dartz/dartz.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/models/data/patient_model.dart';
import 'package:vigor/models/data/vaccine_display.dart';
import 'package:vigor/routes/routes.dart';
import 'package:vigor/ui/views/patient_imm/vax_dates_dialog.dart';

class PatientImmController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final _display = VaccineDisplay().obs;

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    _display.value.birthdate = birthDate();
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String name() => _patient.value.name();
  String birthDate() => _patient.value.birthDate();
  Map<String, Set<FhirDateTime>> immHx() => _display.value.fullVaxDates;
  Either<DoseDisplay, String> display(String dz, int number) =>
      _display.value.matrix[dz][number];
  PatientModel actualPatient() => _patient.value;

  /// SETTER FUNCTIONS
  Future<bool> createDisplay() async {
    await _patient.value.loadImmunizations();
    _display.value.fullVaxDates = _patient.value.immHx;
    _display.value.setDisplayDates();
    _display.value.checkValidityOfDoses();
    return true;
  }

  /// EVENTS
  void displayDatesDialog(String text, String dz) => vaxDatesDialog(text, dz);

  Future newVaccine(String cvx, FhirDateTime date) async {
    await _patient.value.addNewVaccine(cvx, date);
    update();
  }

  void editPatient() =>
      Get.toNamed(AppRoutes.PATIENT_REGISTRATION, arguments: _patient.value);

  // void recordNew(DateTime newDate, String dz) =>
  //     _fullVaxDates[dz].add(FhirDateTime(newDate));
}
