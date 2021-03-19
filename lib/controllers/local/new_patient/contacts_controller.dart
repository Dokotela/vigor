import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/controllers.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/relationship_types.dart';
import '../../../_internal/utils/utils.dart';
import '../../../ui/localization.dart';

class ContactsController extends GetxController {
  /// PROPERTIES
  final _controller = Get.put(NewPatientController());
  final labels = AppLocalizations.of(Get.context!)!;

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

  // GETTERS
  int get currentListLength => _controller!.contacts.length;

  int get nameSort => _nameSort.value;
  int get relationSort => _relationSort.value;
  int get barrioSort => _barrioSort.value;

  String contactName(int index) =>
      lastCommaGivenName([_controller!.contacts[index].name ?? HumanName()]);

  String contactRelation(int index) {
    if (_controller!.contacts.isEmpty) {
      return labels.relationships.title;
    } else if (_controller!.contacts[index].relationship == null) {
      return labels.relationships.title;
    }
    for (var relationship in _controller!.contacts[index].relationship!) {
      if (relationship.coding != null) {
        for (var relation in relationship.coding!) {
          if (relationshipTypes().contains(relationshipStringToLabel(
              relation.display?.toLowerCase() ?? ''))) {
            return relation.display!;
          } else if (relationshipTypes()
              .contains(relation.code.toString().toLowerCase())) {
            return relation.code.toString();
          }
        }
      }
    }
    return labels.relationships.title;
  }

  String contactBarrio(int index) => _controller!.contacts.isEmpty
      ? labels.address.neighborhood.title
      : _controller!.contacts[index].address?.district ??
          labels.address.neighborhood.title;

  String get familyNameError => _familyNameError.value ?? '';
  String get givenNameError => _givenNameError.value ?? '';

  String get relation => _relation.value ?? '';
  String get relationError => _relationError.value ?? '';

  String get barrio => _barrio.value ?? '';
  String get barrioError => _barrioError.value ?? '';

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
      var tempContacts = _controller!.contacts;
      tempContacts.sort((a, b) => _sortName(b, a));
    } else {
      _nameSort.value = 1;
      var tempContacts = _controller!.contacts;
      tempContacts.sort((a, b) => _sortName(a, b));
    }
  }

  int _sortName(PatientContact a, PatientContact b) =>
      lastCommaGivenName([a.name ?? HumanName()])
          .toLowerCase()
          .compareTo(lastCommaGivenName([b.name ?? HumanName()]).toLowerCase());

  void sortByRelation() {
    _nameSort.value = 0;
    _barrioSort.value = 0;
    if (_relationSort.value == 1) {
      _relationSort.value = 2;
      _controller!.contacts.sort((a, b) => _sortRelation(b, a));
    } else {
      _relationSort.value = 1;
      _controller!.contacts.sort((a, b) => _sortRelation(a, b));
    }
  }

  int _sortRelation(PatientContact a, PatientContact b) =>
      _getRelation(a).compareTo(_getRelation(b));

  String _getRelation(PatientContact contact) {
    if (contact.relationship == null) {
      return '';
    } else if (contact.relationship!.isEmpty) {
      return '';
    } else if (contact.relationship![0].coding == null) {
      return '';
    } else if (contact.relationship![0].coding!.isEmpty) {
      return '';
    }

    for (var relation in contact.relationship![0].coding!) {
      if (relationshipTypes().contains(
          relationshipStringToLabel(relation.display?.toLowerCase() ?? ''))) {
        return relation.display!;
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
      _controller!.contacts.sort((a, b) => _sortBarrio(b, a));
    } else {
      _barrioSort.value = 1;
      _controller!.contacts.sort((a, b) => _sortBarrio(a, b));
    }
  }

  int _sortBarrio(PatientContact a, PatientContact b) =>
      (a.address?.district ?? '').compareTo(b.address?.district ?? '');

  Future addNewContact() async {
    var contact = formatPatientContact(
      familyName.text,
      givenName.text,
      _barrio.value ?? '',
      _relation.value ?? '',
    );
    _controller!.addContact(contact);
    update();
    Get.back();
  }
}
