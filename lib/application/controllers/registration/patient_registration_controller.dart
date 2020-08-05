import 'package:fhir/fhir_r4.dart';
import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

class PatientRegistrationController extends GetxController {
  Patient patient;

  TextEditingController familyName;
  TextEditingController givenName;

  RegistrationName family = RegistrationName('Smith');
  RegistrationName given = RegistrationName('');
  RegistrationGender gender = RegistrationGender('female');
  RegistrationBirthDate birthDate = RegistrationBirthDate(DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 1));
  RegistrationBarrio barrio = RegistrationBarrio('');

  void changeLastName() {
    print(family == RegistrationName('Smith'));
    family == RegistrationName('Smith')
        ? family = RegistrationName('Faulkenberry')
        : family = RegistrationName('Smith');
    update();
  }
}
