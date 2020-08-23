import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/registration/contact_registration.dart';
import 'package:vigor/3_domain/formatters/basic_enum_to_string.dart';
import 'package:vigor/3_domain/formatters/district_from_address.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/3_domain/validators.dart';
import 'package:vigor/3_domain/const/const.dart';

part 'patient_registration_controller.freezed.dart';
part 'patient_registration_event.dart';
part 'patient_registration_state.dart';

class PatientRegistrationController extends GetxController {
  // PROPERTIES
  final state = const PatientRegistrationState().obs;
  final familyName = TextEditingController();
  final givenName = TextEditingController();

  // INIT
  @override
  void onInit() {
    Get.arguments == null
        ? state.value = PatientRegistrationState.initialNew()
        : state.value = PatientRegistrationState.initialPatient(Get.arguments);
    familyName.text = state.value.patient?.name == null
        ? ''
        : state.value.patient.name[0].family == null
            ? ''
            : state.value.patient.name[0].family;
    givenName.text = state.value.patient?.name == null
        ? ''
        : state.value.patient.name[0].given == null
            ? ''
            : state.value.patient.name[0].given.join(' ');
    super.onInit();
  }

  // GETTERS
  String get gender => basicEnumToString(state.value.gender);
  DateTime get birthDate => state.value.birthDate;
  String get birthDateString => simpleDateTime(state.value.birthDate);
  String get barrio => state.value.barrio;
  String get familyNameError => state.value.familyNameError;
  String get givenNameError => state.value.givenNameError;
  String get birthDateError => state.value.birthDateError;
  List<String> get barriosList => state.value.barriosList;
  String get barrioError => state.value.barrioError;

  // EVENTS
  void event(PatientRegistrationEvent newEvent) {
    if (newEvent is _Gender) {
      state.value = state.value.copyWith(gender: newEvent.gender);
    } else if (newEvent is _BirthDate) {
      state.value = state.value.copyWith(birthDate: newEvent.birthDate);
    } else if (newEvent is _Barrio) {
      state.value = state.value.copyWith(barrio: newEvent.barrio);
    } else if (newEvent is _Register) {
      if (isValidRegistrationName(familyName.text) &&
          isValidRegistrationName(givenName.text) &&
          isValidRegistrationBirthDate(birthDate) &&
          isValidRegistrationBarrio(barrio)) {
        final Patient newPatient = state.value.patient == null
            ? Patient(
                resourceType: 'Patient',
                name: [
                  HumanName(family: familyName.text, given: [givenName.text])
                ],
                birthDate: Date(birthDate),
                address: [Address(district: barrio)],
                gender: gender == 'female'
                    ? PatientGender.female
                    : PatientGender.male)
            : state.value.patient.copyWith(
                name: [
                  HumanName(family: familyName.text, given: [givenName.text])
                ],
                birthDate: Date(birthDate),
                address: [Address(district: barrio)],
                gender: gender == 'female'
                    ? PatientGender.female
                    : PatientGender.male);
        Get.to(ContactRegistration(), arguments: newPatient);
      } else {
        state.value = state.value.copyWith(
            familyNameError: !isValidRegistrationName(familyName.text)
                ? 'Enter family name'
                : state.value.familyNameError,
            givenNameError: !isValidRegistrationName(givenName.text)
                ? 'Enter other names'
                : state.value.givenNameError,
            birthDateError: !isValidRegistrationBirthDate(state.value.birthDate)
                ? 'Cannot be future date'
                : '',
            barrioError: !isValidRegistrationBarrio(barrio)
                ? 'Please select neighborhood'
                : '');
      }
    }
    update();
  }
}
