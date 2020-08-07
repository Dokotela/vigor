import 'package:fhir/fhir_r4.dart' as r4;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/models/registration/registration_value_objects.dart';

class PatientRegistrationController extends GetxController {
  PatientRegistrationController({this.patient});

  r4.Patient patient;
  TextEditingController familyName = TextEditingController(text: '');
  TextEditingController givenName = TextEditingController(text: '');
  RegistrationName family = RegistrationName('  ');
  RegistrationName given = RegistrationName('  ');
  final gender = ''.obs;
  RegistrationBirthDate birthDate;
  final dispBirthDate = DateTime.now()
      .add(const Duration(days: 1))
      .toString()
      .substring(0, 10)
      .obs;
  RegistrationBarrio barrio = RegistrationBarrio('Neighborhood');
  final displayBarrio = 'Neighborhood'.tr.obs;

  String familyError() => family.value.fold(
        (ifLeft) => 'Enter family name'.tr,
        (ifRight) => null,
      );

  String givenError() => given.value.fold(
        (ifLeft) => 'Enter other names'.tr,
        (ifRight) => null,
      );

  void setFemaleGender() => gender.value = 'female';

  void setMaleGender() => gender.value = 'male';

  void chooseBirthDate(DateTime date) {
    final dateOnly = date.toString().substring(0, 10);
    birthDate = RegistrationBirthDate(r4.Date(dateOnly));
    dispBirthDate.value = birthDate.value.fold(
      (ifLeft) => '${"cannot be future date".tr}: ${ifLeft.failedValue}',
      (ifRight) => ifRight.toString(),
    );
  }

  void setBarrio(String newVal) => displayBarrio.value = newVal;

  void register() {
    family = RegistrationName(familyName.value.text);
    given = RegistrationName(givenName.value.text);
    if (family.isValid() &&
        given.isValid() &&
        barrio.isValid() &&
        gender.value != '' &&
        birthDate.isValid()) {
    } else {
      if (!birthDate.isValid()) {
        dispBirthDate.value = birthDate.value.fold(
          (ifLeft) => '${"cannot be future date".tr}: ${ifLeft.failedValue}',
          (ifRight) => ifRight.toString(),
        );
      }
    }
  }
}
