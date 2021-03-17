import 'package:dartz/dartz.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../models/data/patient_model.dart';
import '../../../models/data/vaccine_display.dart';
import '../../../routes/routes.dart';

class PatientImmController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final _display = VaccineDisplay().obs;
  final _isReady = false.obs;
  final _agDue = false.obs;

  /// INIT
  @override
  Future onInit() async {
    _patient.value = Get.arguments;
    _display.value!.birthdate = birthDate();
    await _patient.value!.loadImmunizations();
    setDisplay();
    super.onInit();
    _isReady.value = true;
  }

  /// because I can't get the onInit to load otherwise
  bool isReady() => _isReady.value!;
  void agNotDue() => _agDue.value = false;

  /// GETTER FUNCTIONS
  String name() => _patient.value!.name();
  String birthDate() => _patient.value!.birthDate();
  Map<String, Set<Immunization>> immHx() => _display.value!.fullVaxDates;
  Either<DoseDisplay, String> display(String dz, int number) {
    final _agDisplay = _display.value!.matrix[dz]![number];
    return _agDisplay.fold(
      (l) {
        if (l == DoseDisplay.overdue && _agDue.value == false) {
          _agDue.value = true;
          return left(DoseDisplay.overdue);
        } else if (l == DoseDisplay.overdue && _agDue.value == true) {
          return left(DoseDisplay.open);
        } else {
          return left(l);
        }
      },
      (r) => right(r),
    );
  }

  PatientModel actualPatient() => _patient.value!;

  /// SETTER FUNCTIONS
  Future loadImmunizations() => _patient.value!.loadImmunizations();

  void setDisplay() {
    _isReady.value = false;
    _display.value!.fullVaxDates = _patient.value!.immHx;
    _display.value!.setDisplayDates();
    _display.value!.checkValidityOfDoses();
    _isReady.value = true;
  }

  /// EVENTS
  Future addNew(String cvx, FhirDateTime date) async {
    await _patient.value!.addNewVaccine(cvx, date);
    setDisplay();
    update();
  }

  Future deleteVaccine(Immunization vax) async {
    await _patient.value!.deleteVaccine(vax);
    setDisplay();
    update();
  }

  Future editDate(Immunization vax, DateTime newDate) async {
    await _patient.value!.editDate(vax, newDate);
    setDisplay();
    update();
  }

  void editPatient() =>
      Get.toNamed(AppRoutes.NEW_PATIENT, arguments: _patient.value);

  void editDates(String text, String dz) =>
      Get.toNamed(AppRoutes.VAX_DATES, arguments: [text, dz]);

  // void recordNew(DateTime newDate, String dz) =>
  //     _fullVaxDates[dz].add(FhirDateTime(newDate));
}
