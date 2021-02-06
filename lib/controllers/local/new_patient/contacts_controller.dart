import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/relationship_types.dart';
import '../../../_internal/utils/utils.dart';
import '../../../models/data/patient_model.dart';
import '../../../services/i_fhir_db.dart';
import '../../../ui/localization.dart';

class ContactsController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final labels = AppLocalizations.of(Get.context);
  final _contactsList = <PatientContact>[].obs;

  /// these 3 variables allow sorting by their header
  final _nameSort = 0.obs;
  final _relationSort = 0.obs;
  final _barrioSort = 0.obs;

  /// these are the fields that are used the in popup dialog
  final familyName = TextEditingController();
  final _familyNameError = ''.obs;
  final givenName = TextEditingController();
  final _givenNameError = ''.obs;
  final relationTypes = relationshipTypes();
  final _relation = ''.obs;
  final _relationError = ''.obs;
  final barriosList = barrios;
  final _barrio = ''.obs;
  final _barrioError = ''.obs;

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    _contactsList.addAllNonNull(_patient.value.patient.contact);
    super.onInit();
  }

  // GETTERS
  PatientModel get patient => _patient.value;
  int get currentListLength => _contactsList.length;

  int get nameSort => _nameSort.value;
  int get relationSort => _relationSort.value;
  int get barrioSort => _barrioSort.value;

  String contactName(int index) =>
      lastCommaGivenName([_contactsList[index].name]);

  String contactRelation(int index) {
    if (_contactsList.isEmpty) {
      return labels.relationships.title;
    } else if (_contactsList[index] == null) {
      return labels.relationships.title;
    } else if (_contactsList[index].relationship == null) {
      return labels.relationships.title;
    }
    for (var relationship in _contactsList[index].relationship) {
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
    return labels.relationships.title;
  }

  String contactBarrio(int index) => _contactsList.isEmpty
      ? labels.address.neighborhood.title
      : _contactsList[index] == null
          ? labels.address.neighborhood.title
          : _contactsList[index].address?.district ??
              labels.address.neighborhood.title;

  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;

  String get relation => _relation.value;
  String get relationError => _relationError.value;

  String get barrio => _barrio.value;
  String get barrioError => _barrioError.value;

  // SETTERS
  void setupForNewContact() {
    _barrio.value = '';
    _relation.value = '';
    familyName.text = '';
    givenName.text = '';
  }

  void selectBarrio(String barrio) => _barrio.value = barrio;

  void selectRelation(String relation) => _relation.value = relation;

  // EVENTS
  void sortByName() {
    _relationSort.value = 0;
    _barrioSort.value = 0;
    if (_nameSort.value == 1) {
      _nameSort.value = 2;
      _contactsList.sort((a, b) => _sortName(b, a));
    } else {
      _nameSort.value = 1;
      _contactsList.sort((a, b) => _sortName(a, b));
    }
  }

  int _sortName(PatientContact a, PatientContact b) =>
      lastCommaGivenName([a.name])
          .toLowerCase()
          .compareTo(lastCommaGivenName([b.name]).toLowerCase());

  void sortByRelation() {
    _nameSort.value = 0;
    _barrioSort.value = 0;
    if (_relationSort.value == 1) {
      _relationSort.value = 2;
      _contactsList.sort((a, b) => _sortRelation(b, a));
    } else {
      _relationSort.value = 1;
      _contactsList.sort((a, b) => _sortRelation(a, b));
    }
  }

  int _sortRelation(PatientContact a, PatientContact b) =>
      _getRelation(a).compareTo(_getRelation(b));

  String _getRelation(PatientContact contact) {
    if (contact?.relationship == null) {
      return '';
    } else if (contact.relationship[0] == null) {
      return '';
    } else if (contact.relationship[0].coding == null) {
      return '';
    } else if (contact.relationship[0].coding.isEmpty) {
      return '';
    }

    for (var relation in contact.relationship[0].coding) {
      if (relationshipTypes().contains(
          relationshipStringToLabel(relation.display.toLowerCase()))) {
        return relation.display;
      } else if (relationshipTypes()
          .contains(relation.code.toString().toLowerCase())) {
        return relation.code.toString();
      }
    }
    return '';
  }

  void sortByBarrio() {
    _nameSort.value = 0;
    _relationSort.value = 0;
    if (_barrioSort.value == 1) {
      _barrioSort.value = 2;
      _contactsList.sort((a, b) => _sortBarrio(b, a));
    } else {
      _barrioSort.value = 1;
      _contactsList.sort((a, b) => _sortBarrio(a, b));
    }
  }

  int _sortBarrio(PatientContact a, PatientContact b) =>
      (a?.address?.district ?? '').compareTo(b?.address?.district ?? '');

  Future addNewContact() async {
    var contact = formatPatientContact(
      familyName.text,
      givenName.text,
      _barrio.value,
      _relation.value,
    );
    _patient.value.patient.contact == null
        ? _patient.value.patient =
            _patient.value.patient.copyWith(contact: [contact])
        : _patient.value.patient.contact.add(contact);
    final saveResult = await IFhirDb().save(_patient.value.patient);
    saveResult.fold(
      (l) => Get.snackbar('Error', l.error),
      (r) {
        _patient.value.patient = r;
        _contactsList.clear();
        _contactsList.addAllNonNull(_patient.value.patient.contact);
        update();
        Get.back();
      },
    );
  }
}
