import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/const/const.dart';
import 'package:vigor/3_domain/formatters/district_from_address.dart';
import 'package:vigor/3_domain/formatters/format_patient_contact.dart';
import 'package:vigor/4_infrastructure/interfaces/i_fhir_db.dart';
import 'package:vigor/3_domain/validators.dart';

part 'contact_registration_controller.freezed.dart';
part 'contact_registration_state.dart';

class ContactRegistrationController extends GetxController {
  // PROPERTIES
  final state = const ContactRegistrationState().obs;
  final familyName1 = TextEditingController(text: '');
  final givenName1 = TextEditingController(text: '');
  final familyName2 = TextEditingController(text: '');
  final givenName2 = TextEditingController(text: '');

  // INIT
  @override
  void onInit() {
    state.value = ContactRegistrationState.initial(Get.arguments);
    if (state.value.patient.contact != null) {
      familyName1.text = state.value.patient.contact[0]?.name?.family ?? '';
      givenName1.text =
          state.value.patient.contact[0]?.name?.given?.join(' ') ?? '';
    }
    super.onInit();
  }

  // GETTERS
  String get familyNameError1 => state.value.familyNameError1;
  String get givenNameError1 => state.value.givenNameError1;
  String get barrio1 => state.value.barrio1;
  String get barrioError1 => state.value.barrioError1;
  String get relation1 => state.value.relation1;
  String get relationError1 => state.value.relationError1;
  String get familyNameError2 => state.value.familyNameError2;
  String get givenNameError2 => state.value.givenNameError2;
  String get barrio2 => state.value.barrio2;
  String get barrioError2 => state.value.barrioError2;
  String get relation2 => state.value.relation2;
  String get relationError2 => state.value.relationError2;
  List<String> get barriosList => state.value.barriosList;
  List<String> get relationList => state.value.relationList;

  // EVENTS
  void barrio1Event(String barrio1) {
    state.value = state.value.copyWith(barrio1: barrio1);
    update();
  }

  void relation1Event(String relation1) {
    state.value = state.value.copyWith(relation1: relation1);
    update();
  }

  void barrio2Event(String barrio2) {
    state.value = state.value.copyWith(barrio2: barrio2);
    update();
  }

  void relation2Event(String relation2) {
    state.value = state.value.copyWith(relation2: relation2);
    update();
  }

  Future<void> registerEvent() async {
    if (isValidRegistrationName(familyName1.text) &&
        isValidRegistrationName(givenName1.text) &&
        isValidRegistrationBarrio(state.value.barrio1) &&
        isValidRegistrationRelation(state.value.relation1)) {
      final newContact = formatPatientContact(familyName1.text, givenName1.text,
          state.value.barrio1, state.value.relation1);
      final newPatient = state.value.patient.copyWith(contact: [newContact]);
      final saveResult = await IFhirDb().save(newPatient);
      saveResult.fold(
        (ifLeft) => Get.snackbar('Error', ifLeft.error),
        (ifRight) => Get.offAll(PatientHome(), arguments: ifRight as Patient),
      );
    } else {
      state.value = state.value.copyWith(
          familyNameError1: !isValidRegistrationName(familyName1.text)
              ? 'Enter family name'
              : state.value.familyNameError1,
          givenNameError1: !isValidRegistrationName(givenName1.text)
              ? 'Enter other names'
              : state.value.givenNameError1,
          relationError1: !isValidRegistrationRelation(state.value.relation1)
              ? 'Please select relationship'
              : '',
          barrioError1: !isValidRegistrationBarrio(state.value.barrio1)
              ? 'Please select neighborhood'
              : '');
    }
    update();
  }
}
