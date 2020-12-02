import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/utils.dart';
import '../../../_internal/utils/validators.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';

import '../../../routes/routes.dart';
import '../../../services/i_fhir_db.dart';

class ContactRegistrationController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final labels = AppLocalizations.of(Get.context);

  final familyName1 = TextEditingController();
  final _familyNameError1 = ''.obs;
  final givenName1 = TextEditingController();
  final _givenNameError1 = ''.obs;
  final _barrio1 = ''.obs;
  final _barrioError1 = ''.obs;
  final _relation1 = ''.obs;
  final _relationError1 = ''.obs;

  final familyName2 = TextEditingController();
  final _familyNameError2 = ''.obs;
  final givenName2 = TextEditingController();
  final _givenNameError2 = ''.obs;
  final _barrio2 = ''.obs;
  final _barrioError2 = ''.obs;
  final _relation2 = ''.obs;
  final _relationError2 = ''.obs;

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    _barrio1.value = _contactBarrio(0);
    _relation1.value = _contactRelation(0);
    _barrio2.value = _contactBarrio(1);
    _relation2.value = _contactRelation(1);
    familyName1.text = _familyName(0);
    givenName1.text = _givenName(0);
    familyName2.text = _familyName(1);
    givenName2.text = _givenName(1);

    super.onInit();
  }

  String get initialGivenName2 => _givenName(1);
  String get initialFamilyName2 => _familyName(1);
  String get initialGivenName1 => _givenName(0);
  String get initialFamilyName1 => _familyName(0);

  // GETTERS
  List<String> get barriosList => barrios;
  List<String> get relationList => relationshipTypes();

  String get familyNameError1 => _familyNameError1.value;
  String get givenNameError1 => _givenNameError1.value;
  String get barrio1 => _barrio1.value;
  String get barrioError1 => _barrioError1.value;
  String get relation1 => _relation1.value;
  String get relationError1 => _relationError1.value;

  String get familyNameError2 => _familyNameError2.value;
  String get givenNameError2 => _givenNameError2.value;
  String get barrio2 => _barrio2.value;
  String get barrioError2 => _barrioError2.value;
  String get relation2 => _relation2.value;
  String get relationError2 => _relationError2.value;

  String _givenName(int number) => _patient?.value?.patient?.contact == null
      ? ''
      : _patient.value.patient.contact.length < number + 1
          ? ''
          : _patient.value.patient.contact[number].name == null
              ? ''
              : _patient.value.patient.contact[number].name.given == null
                  ? ''
                  : _patient.value.patient.contact[number].name.given[0];

  String _familyName(int number) => _patient?.value?.patient?.contact == null
      ? ''
      : _patient.value.patient.contact.length < number + 1
          ? ''
          : _patient.value.patient.contact[number].name == null
              ? ''
              : _patient.value.patient.contact[number].name.family == null
                  ? ''
                  : _patient.value.patient.contact[number].name.family;

  String _contactBarrio(int number) => _patient?.value?.patient?.contact == null
      ? labels.general.address.neighborhood
      : _patient.value.patient.contact.length < number + 1
          ? labels.general.address.neighborhood
          : _patient?.value?.patient?.contact[number]?.address?.district ??
              labels.general.address.neighborhood;

  String _contactRelation(int number) {
    if (_patient?.value?.patient?.contact == null) {
      return labels.general.relationship;
    } else if (_patient.value.patient.contact.length < number + 1) {
      return labels.general.relationship;
    } else if (_patient?.value?.patient?.contact[number]?.relationship ==
        null) {
      return labels.general.relationship;
    }
    for (var relationship
        in _patient.value.patient.contact[number].relationship) {
      for (var relation in relationship.coding) {
        if (relationshipTypes().contains(relation.display.toLowerCase())) {
          return relation.display.toLowerCase();
        } else if (relationshipTypes()
            .contains(relation.code.toString().toLowerCase())) {
          return relation.code.toString().toLowerCase();
        }
      }
    }
    return labels.general.relationship;
  }

  // EVENTS
  void barrio1Event(String barrio1) => _barrio1.value = barrio1;
  void barrio2Event(String barrio2) => _barrio2.value = barrio2;
  void relation1Event(String relation1) => _relation1.value = relation1;
  void relation2Event(String relation2) => _relation2.value = relation2;

  Future<void> registerEvent() async {
    if (isValidRegistrationName(familyName1.text) &&
        isValidRegistrationName(givenName1.text) &&
        isValidRegistrationBarrio(barrio1) &&
        isValidRegistrationRelation(relation1)) {
      final newContact1 = formatPatientContact(
          familyName1.text, givenName1.text, barrio1, relation1);
      _patient.value.patient.contact == null
          ? _patient.value.patient =
              _patient.value.patient.copyWith(contact: [newContact1])
          : _patient.value.patient.contact.isEmpty
              ? _patient.value.patient.contact.add(newContact1)
              : _patient.value.patient.contact.contains(newContact1)
                  ? null
                  : _patient.value.patient.contact.add(newContact1);

      if (isValidRegistrationName(familyName2.text) &&
          isValidRegistrationName(givenName2.text) &&
          isValidRegistrationBarrio(barrio2) &&
          isValidRegistrationRelation(relation2)) {
        final newContact2 = formatPatientContact(
            familyName2.text, givenName2.text, barrio2, relation2);
        _patient.value.patient.contact == null
            ? _patient.value.patient =
                _patient.value.patient.copyWith(contact: [newContact2])
            : _patient.value.patient.contact.isEmpty
                ? _patient.value.patient.contact.add(newContact2)
                : _patient.value.patient.contact.contains(newContact2)
                    ? null
                    : _patient.value.patient.contact.add(newContact2);
      }

      final saveResult = await IFhirDb().save(_patient.value.patient);
      saveResult.fold(
        (l) => Get.snackbar('Error', l.error),
        (r) => Get.offAllNamed(AppRoutes.PATIENT_HOME, arguments: r as Patient),
      );
    } else {
      _familyNameError1.value = !isValidRegistrationName(familyName1.text)
          ? labels.general.familyNameError
          : _familyNameError1.value;
      _givenNameError1.value = !isValidRegistrationName(givenName1.text)
          ? labels.general.givenNameError
          : _givenNameError1.value;
      _relationError1.value = !isValidRegistrationRelation(relation1)
          ? 'Please select relationship'
          : '';
      _barrioError1.value = !isValidRegistrationBarrio(barrio1)
          ? labels.general.neighborhoodError
          : '';
    }
  }
}
