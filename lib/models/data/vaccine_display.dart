import 'package:dartz/dartz.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:vax_cast/vax_cast.dart';
import 'package:vigor/_internal/constants/constants.dart';

class VaccineDisplay {
  VaccineDisplay();

  static final Either<DoseDisplay, String> _na = left(DoseDisplay.na);
  static final Either<DoseDisplay, String> _possible =
      left(DoseDisplay.possible);
  static final Either<DoseDisplay, String> _open = left(DoseDisplay.open);
  String birthdate;
  Map<String, Set<FhirDateTime>> fullVaxDates = {};
  Map<String, List<FhirDateTime>> displayVaxDates = {};
  Map<String, List<Either<DoseDisplay, String>>> matrix = {
    'Tuberculosis': [_open, _na, _na, _na, _na, _na],
    'HepB': [_open, _possible, _possible, _possible, _na, _na],
    'Rotavirus': [_na, _open, _open, _na, _na, _na],
    'Polio': [_na, _open, _open, _open, _open, _open],
    'Pentavalente': [_na, _open, _open, _open, _na, _na],
    'Pneumococcal': [_na, _open, _open, _open, _open, _na],
    'Influenza': [_na, _open, _open, _open, _open, _open],
    'MMR': [_na, _open, _na, _na, _na, _na],
    'DTP': [_na, _possible, _possible, _possible, _open, _open],
    'MR': [_na, _possible, _na, _na, _na, _na],
  };

  void setDisplayDates() =>
      fullVaxDates.forEach((v, k) => displayVaxDates[v] = k.toList());

  void checkValidityOfDoses() {
    matrix['Tuberculosis'][0] = isValid('Tuberculosis', 0);
    matrix['HepB'][0] = isValid('HepB', 0);
    matrix['Rotavirus'][1] = isValid('Rotavirus', 2);
    matrix['Rotavirus'][2] = isValid('Rotavirus', 4);
    matrix['Polio'][1] = isValid('Polio', 2);
    matrix['Polio'][2] = isValid('Polio', 4);
    matrix['Polio'][3] = isValid('Polio', 6);
    matrix['Polio'][4] = isValid('Polio', 18);
    matrix['Polio'][5] = isValid('Polio', 48);
    matrix['Pentavalente'][1] = isValid('Pentavalente', 2);
    matrix['Pentavalente'][2] = isValid('Pentavalente', 4);
    matrix['Pentavalente'][3] = isValid('Pentavalente', 6);
    matrix['Pneumococcal'][1] = isValid('Pneumococcal', 2);
    matrix['Pneumococcal'][2] = isValid('Pneumococcal', 4);
    matrix['Pneumococcal'][3] = isValid('Pneumococcal', 6);
    matrix['Influenza'][1] = isValid('Influenza', 2);
    matrix['Influenza'][2] = isValid('Influenza', 4);
    matrix['Influenza'][3] = isValid('Influenza', 6);
    matrix['Influenza'][4] = isValid('Influenza', 18);
    matrix['Influenza'][5] = isValid('Influenza', 48);
    matrix['MMR'][1] = isValid('MMR', 12);
    matrix['DTP'][4] = isValid('DTP', 18);
    matrix['DTP'][5] = isValid('DTP', 48);
    matrix['MR'][1] = isValid('MR', 12);
  }

  Either<DoseDisplay, String> isValid(String name, int months) {
    if (displayVaxDates[name] == null) {
      return left(DoseDisplay.open);
    } else if (displayVaxDates[name].isEmpty) {
      if (VaxDate.fromString(birthdate).change('$months months') <=
          VaxDate.now()) {
        return left(DoseDisplay.overdue);
      } else {
        return left(DoseDisplay.open);
      }
    }

    while (displayVaxDates[name].isNotEmpty) {
      if (VaxDate.fromString(birthdate).change('$months months') <=
          VaxDate.fromString(displayVaxDates[name].first.toJson())) {
        if (VaxDate.fromString(displayVaxDates[name].first.toJson()) ==
            VaxDate.fromString(VaxDate.now().toString())) {
          displayVaxDates[name].remove(displayVaxDates[name].first);
          return left(DoseDisplay.completedToday);
        } else {
          final date = displayVaxDates[name].first.toJson();
          displayVaxDates[name].remove(displayVaxDates[name].first);
          return right(date);
        }
      } else {
        displayVaxDates[name].remove(displayVaxDates[name].first);
      }
    }
    if (VaxDate.fromString(birthdate).change('$months months') <=
        VaxDate.now()) {
      return left(DoseDisplay.overdue);
    } else if (VaxDate.fromString(birthdate).change('${months + 2} months') <=
        VaxDate.now()) {
      return left(DoseDisplay.due);
    } else {
      return left(DoseDisplay.open);
    }
  }
}
