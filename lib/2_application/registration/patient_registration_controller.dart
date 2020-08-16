import 'package:fhir/fhir_r4.dart' as r4;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/registration/contact_registration.dart';
import 'package:vigor/3_domain/formatters/basic_enum_to_string.dart';
import 'package:vigor/3_domain/formatters/district_from_address.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/3_domain/validators.dart';
import 'package:vigor/3_domain/const/const.dart';

class PatientRegistrationController extends GetxController {
  // VARIABLES
  String familyNameError;
  String givenNameError;
  String gender;
  DateTime birthDate;
  String birthDateError = '';
  String barrio;
  String barrioError = '';

  // PROPERTIES
  final r4.Patient patient = Get.arguments;
  final familyName = TextEditingController();
  final givenName = TextEditingController();
  final List<String> barriosList = barrios;

  //INIT
  @override
  void onInit() {
    familyName.text = patient?.name == null
        ? ''
        : patient.name[0].family == null ? '' : patient.name[0].family;
    givenName.text = patient?.name == null
        ? ''
        : patient.name[0].given == null ? '' : patient.name[0].given.join(' ');
    gender =
        patient?.gender == null ? 'female' : basicEnumToString(patient.gender);
    birthDate = patient?.birthDate == null
        ? DateTime.now().add(const Duration(days: 1))
        : DateTime.parse(patient.birthDate.toString());
    barrio = districtFromAddress(patient?.address);
    super.onInit();
  }

  // SETTER FUNCTIONS

  void setGender(String newGender) {
    gender = newGender;
    update();
  }

  void setBirthDate(DateTime date) {
    birthDate = date ?? birthDate;
    update();
  }

  void setBarrio(String newVal) {
    barrio = newVal;
    update();
  }

  // GETTER FUNCTIONS

  String getBirthDate() => simpleDateTime(birthDate);

  // FUNCTIONS

  void register() {
    if (isValidRegistrationName(familyName.text) &&
        isValidRegistrationName(givenName.text) &&
        isValidRegistrationBirthDate(birthDate) &&
        isValidRegistrationBarrio(barrio)) {
      final r4.Patient newPatient = patient == null
          ? r4.Patient(
              resourceType: 'Patient',
              name: [
                r4.HumanName(family: familyName.text, given: [givenName.text])
              ],
              birthDate: r4.Date(birthDate),
              address: [r4.Address(district: barrio)],
              gender: gender == 'female'
                  ? r4.PatientGender.female
                  : r4.PatientGender.male)
          : patient.copyWith(
              name: [
                r4.HumanName(family: familyName.text, given: [givenName.text])
              ],
              birthDate: r4.Date(birthDate),
              address: [r4.Address(district: barrio)],
              gender: gender == 'female'
                  ? r4.PatientGender.female
                  : r4.PatientGender.male);
      Get.to(ContactRegistration(), arguments: newPatient);
    } else {
      if (!isValidRegistrationName(familyName.text)) {
        familyNameError = 'Enter family name';
      } else {
        familyNameError = null;
      }
      if (!isValidRegistrationName(givenName.text)) {
        givenNameError = 'Enter other names';
      } else {
        givenNameError = null;
      }
      if (!isValidRegistrationBirthDate(birthDate)) {
        birthDateError = 'Cannot be future date';
      } else {
        birthDateError = '';
      }
      if (!isValidRegistrationBarrio(barrio)) {
        barrioError = 'Please select neighborhood';
      } else {
        barrioError = '';
      }
      update();
    }
  }
}
