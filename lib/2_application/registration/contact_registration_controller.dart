import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fhir/fhir_r4.dart' as r4;
import 'package:vigor/1_presentation/screens/patient_home/patient_home.dart';
import 'package:vigor/3_domain/const/const.dart';
import 'package:vigor/3_domain/formatters/district_from_address.dart';
import 'package:vigor/3_domain/formatters/format_patient_contact.dart';
import 'package:vigor/3_domain/interfaces/save_to_db.dart';
import 'package:vigor/3_domain/validators.dart';

class ContactRegistrationController extends GetxController {
  @override
  void onInit() {
    print(patient.toJson().toString());
    if (patient.contact != null) {
      contact1.value.familyName.text = patient.contact[0]?.name?.family ?? '';
      contact1.value.givenName.text =
          patient.contact[0]?.name?.given?.join(' ') ?? '';
      contact1.value.barrio = districtFromAddress([patient.contact[0].address]);
      contact1.value.relation = getPatientContactType(patient.contact);
    }
    super.onInit();
  }

  final r4.Patient patient = Get.arguments;
  final barriosList = barrios;
  final relationList = relationship_types;

  final contact1 = _ContactRegistration().obs;
  final contact2 = _ContactRegistration().obs;
  final contact3 = _ContactRegistration().obs;

  _ContactRegistration getContact1() => contact1.value;
  _ContactRegistration getContact2() => contact2.value;
  _ContactRegistration getContact3() => contact3.value;

  TextEditingController getFamilyTextController(_ContactRegistration contact) =>
      contact.familyName;
  TextEditingController getGivenTextController(_ContactRegistration contact) =>
      contact.givenName;

  String dispFamilyNameError(_ContactRegistration contact) =>
      contact.familyError;
  String dispGivenNameError(_ContactRegistration contact) => contact.givenError;

  void setBarrio1(String newVal) {
    contact1.value.barrio = newVal;
    update();
  }

  void setBarrio2(String newVal) {
    contact2.value.barrio = newVal;
    update();
  }

  void setBarrio3(String newVal) {
    contact3.value.barrio = newVal;
    update();
  }

  String displayBarrio(_ContactRegistration contact) => contact.barrio;
  String dispBarrioError(_ContactRegistration contact) => contact.barrioError;

  void setRelation1(String newVal) {
    contact1.value.relation = newVal;
    update();
  }

  void setRelation2(String newVal) {
    contact2.value.relation = newVal;
    update();
  }

  void setRelation3(String newVal) {
    contact3.value.relation = newVal;
    update();
  }

  String displayRelation(_ContactRegistration contact) => contact.relation;
  String dispRelationError(_ContactRegistration contact) =>
      contact.relationError;

  Future<void> registerContacts() async {
    if (isValidRegistrationName(contact1.value.familyName.text) &&
        isValidRegistrationName(contact1.value.givenName.value.text) &&
        isValidRegistrationBarrio(contact1.value.barrio) &&
        isValidRegistrationRelation(contact1.value.relation)) {
      final newContact = formatPatientContact(
          contact1.value.familyName.text,
          contact1.value.givenName.text,
          contact1.value.barrio,
          contact1.value.relation);
      final newPatient = patient.copyWith(contact: [newContact]);
      final saveResult = await SaveResource(newPatient).toDb();
      saveResult.fold(
        (ifLeft) => Get.snackbar('Error', ifLeft.error),
        (ifRight) =>
            Get.offAll(PatientHome(), arguments: ifRight as r4.Patient),
      );
    } else {
      print(contact1.value.familyName.text);
      print(contact1.value.givenName.value.text);
      print(contact1.value.barrio);
      print(contact1.value.relation);
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

  String dispFamilyNameError() => familyError;
  String dispGivenNameError() => givenError;
}
