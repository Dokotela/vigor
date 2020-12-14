import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/services/i_fhir_db.dart';

import '../../../_internal/utils/relationship_types.dart';
import '../../../_internal/utils/utils.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';

class ContactsController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final labels = AppLocalizations.of(Get.context);
  final _contactsList = <PatientContact>[].obs;
  final _relationTypes = relationshipTypes();
  final _nameSort = 0.obs;
  final _relation = ''.obs;
  final _relationSort = 0.obs;
  final _relationError = ''.obs;
  final _barrioSort = 0.obs;
  final familyName = TextEditingController();
  final _familyNameError = ''.obs;
  final givenName = TextEditingController();
  final _givenNameError = ''.obs;
  final _barrio = ''.obs;
  final _barrioError = ''.obs;
  final _barriosList = barrios;
  final newPatient = Get.arguments[1];

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments[0];
    _contactsList.addAllNonNull(_patient.value.patient.contact);
    super.onInit();
  }

  // GETTERS
  PatientModel get patient => _patient.value;
  int get nameSort => _nameSort.value;
  int get relationSort => _relationSort.value;
  int get barrioSort => _barrioSort.value;
  String get relation => _relation.value;
  int get currentListLength => _contactsList.length;
  List<String> get relationTypes => _relationTypes;
  String get relationError => _relationError.value;

  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;

  List<String> get barriosList => _barriosList;
  String get barrio => _barrio.value;
  String get barrioError => _barrioError.value;

  String contactName(int index) =>
      lastCommaGivenName([_contactsList[index].name]);

  String contactRelation(int index) {
    if (_contactsList.isEmpty) {
      return labels.general.relationship;
    } else if (_contactsList[index] == null) {
      return labels.general.relationship;
    } else if (_contactsList[index].relationship == null) {
      return labels.general.relationship;
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
    return labels.general.relationship;
  }

  String contactBarrio(int index) => _contactsList.isEmpty
      ? labels.general.address.neighborhood
      : _contactsList[index] == null
          ? labels.general.address.neighborhood
          : _contactsList[index].address?.district ??
              labels.general.address.neighborhood;

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
