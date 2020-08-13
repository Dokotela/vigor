import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fhir/fhir_r4.dart' as r4;
import 'package:vigor/1_presentation/screens/patient_home/patient_home.dart';
import 'package:vigor/3_domain/const/const.dart';
import 'package:vigor/3_domain/formatters/district_from_address.dart';
import 'package:vigor/3_domain/formatters/format_patient_contact.dart';
import 'package:vigor/3_domain/interfaces/i_fhir_db.dart';
import 'package:vigor/3_domain/validators.dart';

class ContactRegistrationController extends GetxController {
  @override
  void onInit() {
    if (patient.contact != null) {
      contact1.familyName.text = patient.contact[0]?.name?.family ?? '';
      contact1.givenName.text =
          patient.contact[0]?.name?.given?.join(' ') ?? '';
      contact1.barrio = districtFromAddress([patient.contact[0].address]);
      contact1.relation = getPatientContactType(patient.contact);
    }
    super.onInit();
  }

  final r4.Patient patient = Get.arguments;
  final barriosList = barrios;
  final relationList = relationship_types;

  final contact1 = _ContactRegistration();
  final contact2 = _ContactRegistration();

  void setBarrio1(String newVal) {
    contact1.barrio = newVal;
    update();
  }

  void setBarrio2(String newVal) {
    contact2.barrio = newVal;
    update();
  }

  void setRelation1(String newVal) {
    contact1.relation = newVal;
    update();
  }

  void setRelation2(String newVal) {
    contact2.relation = newVal;
    update();
  }

  Future<void> registerContacts() async {
    if (isValidRegistrationName(contact1.familyName.text) &&
        isValidRegistrationName(contact1.givenName.text) &&
        isValidRegistrationBarrio(contact1.barrio) &&
        isValidRegistrationRelation(contact1.relation)) {
      final newContact = formatPatientContact(contact1.familyName.text,
          contact1.givenName.text, contact1.barrio, contact1.relation);
      final newPatient = patient.copyWith(contact: [newContact]);
      final saveResult = await IFhirDb().save(newPatient);
      saveResult.fold(
        (ifLeft) => Get.snackbar('Error', ifLeft.error),
        (ifRight) =>
            Get.offAll(PatientHome(), arguments: ifRight as r4.Patient),
      );
    } else {
      print(contact1.familyName.text);
      print(contact1.givenName.text);
      print(contact1.barrio);
      print(contact1.relation);
    }
    update();
  }
}

class _ContactRegistration {
  _ContactRegistration();
  TextEditingController familyName = TextEditingController(text: '');
  TextEditingController givenName = TextEditingController(text: '');
  String familyError;
  String givenError;
  String barrio = 'Neighborhood';
  String barrioError = '';
  String relation = 'Relationship';
  String relationError = '';
}
