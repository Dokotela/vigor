import 'package:fhir/fhir_r4.dart' as r4;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/utils/validators.dart';

class PatRegController extends GetxController {
  PatRegController({this.patient});

  r4.Patient patient;
  TextEditingController familyName = TextEditingController(text: '');
  TextEditingController givenName = TextEditingController(text: '');
  String familyError;
  String givenError;
  final gender = 'female'.obs;
  final birthDate = DateTime.now().add(const Duration(days: 1)).obs;
  final birthDateError = ''.obs;
  final barrio = 'Neighborhood'.tr.obs;
  final barrioError = ''.obs;

  String dispFamilyError() => familyError;
  String dispGivenError() => givenError;

  void setFemaleGender() => gender.value = 'female';
  void setMaleGender() => gender.value = 'male';
  String curGender() => gender.value;

  void chooseBirthDate(DateTime date) => birthDate.value = date;
  String displayBirthDate() => birthDate.value.toString().substring(0, 10);
  String dispBirthDateError() => birthDateError.value;

  void setBarrio(String newVal) => barrio.value = newVal;
  String displayBarrio() => barrio.value;
  String dispBarrioError() => barrioError.value;

  void register() {
    print(familyName.value.text);
    print(givenName.value.text);
    if (isValidRegistrationName(familyName.value.text) &&
        isValidRegistrationName(givenName.value.text) &&
        isValidRegistrationBirthDate(birthDate.value) &&
        isValidRegistrationBarrio(barrio.value)) {
    } else {
      if (!isValidRegistrationName(familyName.value.text)) {
        familyError = 'Enter family name'.tr;
      }
      if (!isValidRegistrationName(givenName.value.text)) {
        givenError = 'Enter other names'.tr;
      }
      if (!isValidRegistrationBirthDate(birthDate.value)) {
        birthDateError.value = 'Cannot be future date'.tr;
      }
      if (!isValidRegistrationBarrio(barrio.value)) {
        barrioError.value = 'Please select neighborhood'.tr;
      }
      update();
    }
  }
}
