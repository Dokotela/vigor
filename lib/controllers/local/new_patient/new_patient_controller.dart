import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/services/i_fhir_db.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/utils.dart';
import '../../../_internal/utils/validators.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';
import '../../../routes/routes.dart';

class NewPatientController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final newPatient = Get.arguments == null;
  final familyName = TextEditingController();
  final _familyNameError = ''.obs;
  final givenName = TextEditingController();
  final _givenNameError = ''.obs;
  final _birthDate = DateTime(1900, 1, 1).obs;
  final _birthDateString = ''.obs;
  final _birthDateError = ''.obs;
  final _gender = ''.obs;
  final _genderError = ''.obs;
  final _genderTypes = genderList();
  final _barrio = ''.obs;
  final _barrioError = ''.obs;
  final _barriosList = barrios;
  final labels = AppLocalizations.of(Get.context);

  /// INIT
  @override
  void onInit() {
    print(newPatient);
    if (Get.arguments != null) {
      _patient.value = Get.arguments;
      _gender.value = _patient.value.patient.gender == PatientGender.female
          ? labels.general.sexAtBirth.female
          : labels.general.sexAtBirth.male;
      _birthDate.value =
          DateTime.parse(_patient.value.patient.birthDate.toString());
      _barrio.value = _patient.value.barrio();
      _birthDateString.value = dateFromDateTime(_birthDate.value);
    }
    familyName.text = _patient.value.familyName();
    givenName.text = _patient.value.givenName();
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;

  DateTime get birthDate => _birthDate.value;
  String get displayBirthDate => _birthDateString.value;
  String get birthDateError => _birthDateError.value;

  List<String> get genderTypes => _genderTypes;
  String get gender => _gender.value;
  String get genderError => _genderError.value;

  List<String> get barriosList => _barriosList;
  String get barrio => _barrio.value;
  String get barrioError => _barrioError.value;

  /// EVENTS
  void setGender(String gender) => _gender.value = gender;

  void chooseBirthDate(DateTime birthDate) {
    _birthDate.value = birthDate ?? _birthDate.value;
    _birthDateString.value = dateFromDateTime(_birthDate.value);
  }

  void selectBarrio(String barrio) => _barrio.value = barrio;

  Future registerEvent() async {
    if (isValidRegistrationName(familyName.text) &&
        isValidRegistrationName(givenName.text) &&
        isValidRegistrationBirthDate(_birthDate.value) &&
        isValidRegistrationBarrio(barrio) &&
        isValidGender(gender)) {
      _patient.value.patient = _patient.value.patient == null
          ? Patient(
              name: [
                HumanName(
                  family: familyName.text,
                  given: [givenName.text],
                )
              ],
              birthDate: Date(_birthDate.value),
              address: [Address(district: barrio)],
              gender: gender == labels.general.sexAtBirth.female
                  ? PatientGender.female
                  : PatientGender.male)
          : _patient.value.patient.copyWith(
              name: [
                HumanName(
                  family: familyName.text,
                  given: [givenName.text],
                )
              ],
              birthDate: Date(_birthDate.value),
              address: [Address(district: barrio)],
              gender: gender == labels.general.sexAtBirth.female
                  ? PatientGender.female
                  : PatientGender.male,
            );

      final saveResult = await IFhirDb().save(_patient.value.patient);
      saveResult.fold(
        (l) => Get.snackbar('Error', l.error),
        (r) {
          _patient.value.patient = r;
          Get.toNamed(AppRoutes.CONTACTS,
              arguments: [_patient.value, newPatient]);
        },
      );
    } else {
      if (!isValidRegistrationName(familyName.text)) {
        _familyNameError.value = labels.general.familyNameError;
      }
      if (!isValidRegistrationName(givenName.text)) {
        _givenNameError.value = labels.general.givenNameError;
      }
      if (!isValidRegistrationBirthDate(_birthDate.value)) {
        _birthDateError.value = labels.general.birthDateError;
      }
      if (!isValidRegistrationBarrio(barrio)) {
        _barrioError.value = labels.general.neighborhoodError;
      }
      if (!isValidGender(gender)) {
        _genderError.value = labels.general.genderError;
      }
    }
  }
}
