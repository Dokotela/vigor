import 'package:dartz/dartz.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';
import 'package:vax_cast/vax_cast.dart';
import 'package:vigor/models/data/patient_model.dart';
import 'package:vigor/routes/routes.dart';
import 'package:vigor/ui/views/patient_imm/vax_dates_dialog.dart';
import 'package:vigor/ui/views/patient_imm/widgets/dose_options.dart';

class PatientImmController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final _fullVaxDates = <String, Set<FhirDateTime>>{}.obs;
  final _displayVaxDates = <String, List<FhirDateTime>>{};

  /// INIT
  @override
  Future onInit() async {
    _patient.value = Get.arguments;
    await _patient.value.loadImmunizations();
    _fullVaxDates.assignAll(_patient.value.immHx);
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String name() => _patient.value.name();
  String birthDate() => _patient.value.birthDate();
  Map<String, Set<FhirDateTime>> immHx() => _fullVaxDates;
  PatientModel actualPatient() => _patient.value;

  Either<DoseDisplay, String> isValid(String name, int months) {
    if (_displayVaxDates[name] == null) {
      return left(DoseDisplay.open);
    } else if (_displayVaxDates[name].isEmpty) {
      if (VaxDate.fromString(birthDate()).change('$months months') <=
          VaxDate.now()) {
        return left(DoseDisplay.overdue);
      } else {
        return left(DoseDisplay.open);
      }
    }

    while (_displayVaxDates[name].isNotEmpty) {
      if (VaxDate.fromString(birthDate()).change('$months months') <=
          VaxDate.fromString(_displayVaxDates[name].first.toJson())) {
        if (VaxDate.fromString(_displayVaxDates[name].first.toJson()) ==
            VaxDate.fromString(VaxDate.now().toString())) {
          _displayVaxDates[name].remove(_displayVaxDates[name].first);
          return left(DoseDisplay.completedToday);
        } else {
          final date = _displayVaxDates[name].first.toJson();
          _displayVaxDates[name].remove(_displayVaxDates[name].first);
          return right(date);
        }
      } else {
        _displayVaxDates[name].remove(_displayVaxDates[name].first);
      }
    }
    if (VaxDate.fromString(birthDate()).change('$months months') <=
        VaxDate.now()) {
      return left(DoseDisplay.overdue);
    } else if (VaxDate.fromString(birthDate()).change('${months + 2} months') <=
        VaxDate.now()) {
      return left(DoseDisplay.due);
    } else {
      return left(DoseDisplay.open);
    }
  }

  /// SETTER FUNCTIONS
  void displayVaxDates() =>
      _fullVaxDates.forEach((v, k) => _displayVaxDates[v] = k.toList());

  /// EVENTS
  void displayDatesDialog(String text, String dz) => vaxDatesDialog(text, dz);

  Future newVaccine(String cvx, FhirDateTime date) async {
    await _patient.value.addNewVaccine(cvx, date);
    update();
  }

  void editPatient() =>
      Get.toNamed(AppRoutes.PATIENT_REGISTRATION, arguments: _patient.value);

  void recordNew(DateTime newDate, String dz) =>
      _fullVaxDates[dz].add(FhirDateTime(newDate));
}
