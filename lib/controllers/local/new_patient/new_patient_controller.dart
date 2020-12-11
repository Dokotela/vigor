import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/utils.dart';
import '../../../_internal/utils/validators.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';
import '../../../routes/routes.dart';

class NewPatientController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final familyName = TextEditingController();
  final _familyNameError = ''.obs;
  final givenName = TextEditingController();
  final _givenNameError = ''.obs;
  final _birthDate = DateTime(1900, 1, 1).obs;
  final _birthDateString = ''.obs;
  final _gender = 0.obs;
  final _genderError = ''.obs;
  final _birthDateError = ''.obs;
  final _barrio = ''.obs;
  final _barrioError = ''.obs;
  final _barriosList = barrios;
  final labels = AppLocalizations.of(Get.context);

  /// INIT
  @override
  void onInit() {
    if (Get.arguments != null) {
      _patient.value = Get.arguments;
      _gender.value =
          _patient.value.patient.gender == PatientGender.female ? 1 : 2;
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
  int get gender => _gender.value;
  String get genderError => _genderError.value;
  DateTime get date => _birthDate.value;
  String get displayBirthDate => _birthDateString.value;
  String get barrio => _barrio.value;
  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;
  String get birthDateError => _birthDateError.value;
  String get barrioError => _barrioError.value;
  List<String> get barriosList => _barriosList;

  /// EVENTS
  void genderEvent(int gender) => _gender.value = gender;

  void chooseBirthDate(DateTime birthDate) {
    _birthDate.value = birthDate ?? _birthDate.value;
    _birthDateString.value = dateFromDateTime(_birthDate.value);
  }

  void barrioEvent(String barrio) => _barrio.value = barrio;

  void registerEvent() {
    if (isValidRegistrationName(familyName.text) &&
        isValidRegistrationName(givenName.text) &&
        isValidRegistrationBirthDate(_birthDate.value) &&
        isValidRegistrationBarrio(barrio) &&
        isValidGenderInt(gender)) {
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
              gender: gender == 1 ? PatientGender.female : PatientGender.male)
          : _patient.value.patient.copyWith(
              name: [
                HumanName(
                  family: familyName.text,
                  given: [givenName.text],
                )
              ],
              birthDate: Date(_birthDate.value),
              address: [Address(district: barrio)],
              gender: gender == 1 ? PatientGender.female : PatientGender.male);

      Get.toNamed(AppRoutes.CONTACT_REGISTRATION, arguments: _patient.value);
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
      if (!isValidGenderInt(gender)) {
        _genderError.value = 'Please select gender';
        //labels.general.genderError;
      }
    }
  }
}
