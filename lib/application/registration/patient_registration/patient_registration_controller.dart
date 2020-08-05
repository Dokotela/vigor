import 'package:fhir/fhir_r4.dart';
import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

class PatientRegistrationController extends GetxController {
  Patient patient;

  TextEditingController familyName;
  TextEditingController givenName;

  RegistrationName family;
  String familyError;
  RegistrationName given;
  String givenError;
  String gender;
  RegistrationBirthDate birthDate;
  String birthDateError;
  RegistrationBarrio barrio;
  String barrioError;

  void register() {
    family == RegistrationName('Smith')
        ? family = RegistrationName('Faulkenberry')
        : family = RegistrationName('Smith');
    update();
  }

  void setFemaleGender() {
    gender = 'female';
    print(gender);
    update();
  }

  void setMaleGender() {
    gender = 'male';
    print(gender);
    update();
  }
}
