import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/relationship_types.dart';
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

  final familyName = TextEditingController();
  final _familyNameError = ''.obs;
  final givenName = TextEditingController();
  final _givenNameError = ''.obs;
  final _barrio = ''.obs;
  final _barrioError = ''.obs;
  final _relation = ''.obs;
  final _relationError = ''.obs;

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    _barrio.value = _contactBarrio(0);
    _relation.value = _contactRelation(0);
    familyName.text = _familyName(0);
    givenName.text = _givenName(0);
    super.onInit();
  }

  String get initialGivenName => _givenName(0);
  String get initialFamilyName => _familyName(0);

  // GETTERS
  List<String> get barriosList => barrios;
  List<String> get relationList => relationshipTypes();

  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;
  String get barrio => _barrio.value;
  String get barrioError => _barrioError.value;
  String get relation => _relation.value;
  String get relationError => _relationError.value;

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
        if (relationshipTypes().contains(
            relationshipStringToLabel(relation.display.toLowerCase()))) {
          return relation.display;
        } else if (relationshipTypes()
            .contains(relation.code.toString().toLowerCase())) {
          return relation.code.toString();
        }
      }
    }
    return labels.general.relationship;
  }

  // EVENTS
  void barrioEvent(String barrio) => _barrio.value = barrio;
  void relationEvent(String relation) => _relation.value = relation;

  Future<void> registerEvent() async {
    if (isValidRegistrationName(familyName.text) &&
        isValidRegistrationName(givenName.text) &&
        isValidRegistrationBarrio(barrio) &&
        isValidRegistrationRelation(relation)) {
      final newContact = formatPatientContact(
          familyName.text, givenName.text, barrio, relation);
      _patient.value.patient.contact == null
          ? _patient.value.patient =
              _patient.value.patient.copyWith(contact: [newContact])
          : _patient.value.patient.contact.isEmpty
              ? _patient.value.patient.contact.add(newContact)
              : _patient.value.patient.contact.contains(newContact)
                  ? null
                  : _patient.value.patient.contact.add(newContact);

      final saveResult = await IFhirDb().save(_patient.value.patient);
      saveResult.fold(
        (l) => Get.snackbar('Error', l.error),
        (r) => Get.offAllNamed(AppRoutes.PATIENT_HOME_PAGE,
            arguments: r as Patient),
      );
    } else {
      _familyNameError.value = !isValidRegistrationName(familyName.text)
          ? labels.general.familyNameError
          : _familyNameError.value;
      _givenNameError.value = !isValidRegistrationName(givenName.text)
          ? labels.general.givenNameError
          : _givenNameError.value;
      _relationError.value = !isValidRegistrationRelation(relation)
          ? 'Please select relationship'
          : '';
      _barrioError.value = !isValidRegistrationBarrio(barrio)
          ? labels.general.neighborhoodError
          : '';
    }
  }
}
