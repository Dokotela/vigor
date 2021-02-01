import 'package:dartz/dartz.dart';
import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/utils.dart';
import '../../../_internal/utils/validators.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';
import '../../../models/failures/db_failures.dart';
import '../../../routes/routes.dart';
import '../../../services/i_fhir_db.dart';

class NewPatientController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final newPatient = Get.arguments == null;
  final labels = AppLocalizations.of(Get.context);

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

  /// INIT
  @override
  void onInit() {
    if (Get.arguments != null) {
      _patient.value = Get.arguments;
      _gender.value = _patient.value.patient.gender == PatientGender.female
          ? labels.gender.female
          : labels.gender.male;
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

  /// SETTERS
  void setGender(String gender) => _gender.value = gender;

  void chooseBirthDate(DateTime birthDate) {
    _birthDate.value = birthDate ?? _birthDate.value;
    _birthDateString.value = dateFromDateTime(_birthDate.value);
  }

  void selectBarrio(String barrio) => _barrio.value = barrio;

  ///EVENTS
  Future<Either<DbFailure, Unit>> save() async {
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
              gender: gender == labels.gender.female
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
              gender: gender == labels.gender.female
                  ? PatientGender.female
                  : PatientGender.male,
            );

      final saveResult = await IFhirDb().save(_patient.value.patient);
      return saveResult.fold(
        (l) => left(l),
        (r) {
          _patient.value.patient = r;
          return right(unit);
        },
      );
    } else {
      if (!isValidRegistrationName(familyName.text)) {
        _familyNameError.value = labels.name.familyNameError;
      }
      if (!isValidRegistrationName(givenName.text)) {
        _givenNameError.value = labels.name.givenNameError;
      }
      if (!isValidRegistrationBirthDate(_birthDate.value)) {
        _birthDateError.value = labels.birthDate.error;
      }
      if (!isValidRegistrationBarrio(barrio)) {
        _barrioError.value = labels.address.neighborhood.error;
      }
      if (!isValidGender(gender)) {
        _genderError.value = labels.gender.error;
      }
      return left(DbFailure.unableToSave(error: labels.general.completeError));
    }
  }

  void completeRegistration() =>
      Get.toNamed(AppRoutes.CONTACTS, arguments: _patient.value);
}
