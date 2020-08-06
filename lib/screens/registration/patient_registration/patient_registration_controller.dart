import 'package:fhir/fhir_r4.dart' as r4;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/models/registration_value_objects.dart';

class PatientRegistrationController extends GetxController {
  r4.Patient patient;

  TextEditingController familyName;
  TextEditingController givenName;

  RegistrationName family;
  String familyError;
  RegistrationName given;
  String givenError;
  String gender;
  RegistrationBirthDate birthDate;
  String dispBirthDate =
      DateTime.now().add(const Duration(days: 1)).toString().substring(0, 10);

  void register() {
    family == RegistrationName('Smith')
        ? family = RegistrationName('Faulkenberry')
        : family = RegistrationName('Smith');
    update();
  }

  void setFemaleGender() {
    gender = 'female';
    update();
  }

  void setMaleGender() {
    gender = 'male';
    update();
  }

  void chooseBirthDate(DateTime date) {
    final dateOnly = date.toString().substring(0, 10);
    birthDate = RegistrationBirthDate(r4.Date(dateOnly));
    dispBirthDate = birthDate.value.fold(
      (ifLeft) => '${"cannot be future date".tr}: ${ifLeft.failedValue}',
      (ifRight) => ifRight.toString(),
    );
    update();
  }
}
