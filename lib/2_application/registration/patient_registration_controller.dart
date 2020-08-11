import 'package:fhir/fhir_r4.dart' as r4;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/registration/contact_registration.dart';
import 'package:vigor/3_domain/formatters/basic_enum_to_string.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/3_domain/validators.dart';
import 'package:vigor/3_domain/const/const.dart';

class PatientRegistrationController extends GetxController {
  @override
  void onInit() {
    familyName.text = patient?.name == null
        ? ''
        : patient.name[0].family == null ? '' : patient.name[0].family;
    givenName.text = patient?.name == null
        ? ''
        : patient.name[0].given == null ? '' : patient.name[0].given.join(' ');

    gender = patient?.gender == null
        ? 'female'.obs
        : basicEnumToString(patient.gender).obs;
    registerBirthDate = patient?.birthDate == null
        ? DateTime.now().add(const Duration(days: 1)).obs
        : DateTime.parse(patient.birthDate.toString()).obs;
    barrio = patient?.address == null
        ? 'Neighborhood'.tr.obs
        : patient.address[0].district == null
            ? 'Neighborhood'.tr.obs
            : patient.address[0].district.obs;
    super.onInit();
  }

  final r4.Patient patient = Get.arguments;
  final familyName = TextEditingController();
  final givenName = TextEditingController();
  String familyError;
  String givenError;
  RxString gender;
  Rx<DateTime> registerBirthDate;
  RxString birthDateError = ''.obs;
  RxString barrio;
  RxString barrioError = ''.obs;
  final List<String> barriosList = barrios;

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
    registerBirthDate.value = date ?? registerBirthDate.value;
    update();
  }

  String displayBirthDate() => simpleDateTime(registerBirthDate.value);
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
        isValidRegistrationBirthDate(registerBirthDate.value) &&
        isValidRegistrationBarrio(barrio.value)) {
      final r4.Patient newPatient = patient == null
          ? r4.Patient(
              resourceType: 'Patient',
              name: [
                r4.HumanName(
                    family: familyName.value.text,
                    given: [givenName.value.text])
              ],
              birthDate: r4.Date(registerBirthDate.value),
              address: [r4.Address(district: barrio.value)],
              gender: gender.value == 'female'
                  ? r4.PatientGender.female
                  : r4.PatientGender.male)
          : patient.copyWith(
              name: [
                r4.HumanName(
                    family: familyName.value.text,
                    given: [givenName.value.text])
              ],
              birthDate: r4.Date(registerBirthDate.value),
              address: [r4.Address(district: barrio.value)],
              gender: gender.value == 'female'
                  ? r4.PatientGender.female
                  : r4.PatientGender.male);
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
      if (!isValidRegistrationBirthDate(registerBirthDate.value)) {
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
