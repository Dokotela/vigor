import 'package:fhir/fhir_r4.dart' as r4;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/registration/contact_registration.dart';
import 'package:vigor/3_domain/validators.dart';
import 'package:vigor/3_domain/const/const.dart';

class PatientRegistrationController extends GetxController {
  // PatientRegistrationController({this.patient});

  final r4.Patient patient = Get.arguments;
  TextEditingController familyName = TextEditingController(text: '');
  TextEditingController givenName = TextEditingController(text: '');
  String familyError;
  String givenError;
  final gender = 'female'.obs;
  final birthDate = DateTime.now().add(const Duration(days: 1)).obs;
  final birthDateError = ''.obs;
  final barrio = 'Neighborhood'.obs;
  final barrioError = ''.obs;
  final barriosList = barrios;

  String dispFamilyNameError() => familyError;
  String dispGivenNameError() => givenError;

  void setFemaleGender() {
    gender.value = 'female';
    update();
  }

  void setMaleGender() {
    gender.value = 'male';
    update();
  }

  String curGender() => gender.value;

  void chooseBirthDate(DateTime date) {
    birthDate.value = date ?? birthDate.value;
    update();
  }

  String displayBirthDate() => birthDate.value.toString().substring(0, 10);
  String dispBirthDateError() => birthDateError.value;

  void setBarrio(String newVal) {
    barrio.value = newVal;
    update();
  }

  String displayBarrio() => barrio.value;
  String dispBarrioError() => barrioError.value;

  void register() {
    if (isValidRegistrationName(familyName.value.text) &&
        isValidRegistrationName(givenName.value.text) &&
        isValidRegistrationBirthDate(birthDate.value) &&
        isValidRegistrationBarrio(barrio.value)) {
      final r4.Patient newPatient = patient == null
          ? r4.Patient(
              resourceType: 'Patient',
              name: [r4.HumanName(family: familyName.value.text)])
          : patient
              .copyWith(name: [r4.HumanName(family: familyName.value.text)]);
      Get.to(ContactRegistration(), arguments: newPatient);
    } else {
      if (!isValidRegistrationName(familyName.value.text)) {
        familyError = 'Enter family name';
      } else {
        familyError = null;
      }
      if (!isValidRegistrationName(givenName.value.text)) {
        givenError = 'Enter other names';
      } else {
        givenError = null;
      }
      if (!isValidRegistrationBirthDate(birthDate.value)) {
        birthDateError.value = 'Cannot be future date';
      } else {
        birthDateError.value = '';
      }
      if (!isValidRegistrationBarrio(barrio.value)) {
        barrioError.value = 'Please select neighborhood';
      } else {
        barrioError.value = '';
      }
      update();
    }
  }
}
