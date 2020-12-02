import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/utils.dart';
import '../../../_internal/utils/validators.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';
import '../../../routes/routes.dart';

class PatientRegistrationController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final familyName = TextEditingController();
  final _familyNameError = ''.obs;
  final givenName = TextEditingController();
  final _givenNameError = ''.obs;
  final _birthDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day + 1,
  ).obs;
  final _gender = true.obs;
  final _birthDateError = ''.obs;
  final _barrio = ''.obs;
  final _barrioError = ''.obs;
  final _barriosList = barrios.obs;
  final labels = AppLocalizations.of(Get.context);

  /// INIT
  @override
  void onInit() {
    if (Get.arguments == null) {
      _patient.value = Get.arguments;
      _gender.value = _patient.value.patient.gender == PatientGender.female;
      _birthDate.value =
          DateTime.parse(_patient.value.patient.birthDate.toString());
      _barrio.value = _patient.value.barrio();
    } else {
      _gender.value = true;
      _barrio.value = labels.general.address.neighborhood;
    }

    familyName.text = _patient.value.familyName();
    givenName.text = _patient.value.givenName();

    super.onInit();
  }

  /// GETTER FUNCTIONS
  bool get gender => _gender.value;
  DateTime get birthDate => _birthDate.value;
  String get birthDateString => dateFromDateTime(_birthDate.value);
  String get barrio => _barrio.value;
  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;
  String get birthDateError => _birthDateError.value;
  String get barrioError => _barrioError.value;
  List<String> get barriosList => _barriosList;

  /// EVENTS
  void genderEvent(bool gender) => _gender.value = gender;

  void birthDateEvent(DateTime birthDate) => _birthDate.value = birthDate;

  void barrioEvent(String barrio) => _barrio.value = barrio;

  void registerEvent() {
    if (isValidRegistrationName(familyName.text)) {
      if (isValidRegistrationName(givenName.text)) {
        if (isValidRegistrationBirthDate(birthDate)) {
          if (isValidRegistrationBarrio(barrio)) {
            _patient.value.patient = _patient.value.patient == null
                ? Patient(
                    name: [
                      HumanName(
                        family: familyName.text,
                        given: [givenName.text],
                      )
                    ],
                    birthDate: Date(birthDate),
                    address: [Address(district: barrio)],
                    gender: gender ? PatientGender.female : PatientGender.male)
                : _patient.value.patient.copyWith(
                    name: [
                      HumanName(
                        family: familyName.text,
                        given: [givenName.text],
                      )
                    ],
                    birthDate: Date(birthDate),
                    address: [Address(district: barrio)],
                    gender: gender == 'female'
                        ? PatientGender.female
                        : PatientGender.male);
            Get.toNamed(AppRoutes.CONTACT_REGISTRATION,
                arguments: _patient.value);
          } else {
            _barrioError.value = labels.general.neighborhoodError;
          }
        } else {
          _birthDateError.value = labels.general.birthDateError;
        }
      } else {
        _givenNameError.value = labels.general.givenNameError;
      }
    } else {
      _familyNameError.value = labels.general.familyNameError;
    }
  }
}
