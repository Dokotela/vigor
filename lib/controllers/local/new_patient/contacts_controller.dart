import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../../_internal/utils/relationship_types.dart';
import '../../../_internal/utils/utils.dart';
import '../../../localization.dart';
import '../../../models/data/patient_model.dart';

class ContactsController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final labels = AppLocalizations.of(Get.context);
  final _contactsList = <PatientContact>[].obs;
  final _nameSort = 0.obs;
  final _relationSort = 0.obs;
  final _barrioSort = 0.obs;

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    _contactsList.addAll(_patient.value.patient.contact);
    super.onInit();
  }

  // GETTERS
  int get nameSort => _nameSort.value;
  int get relationSort => _relationSort.value;
  int get barrioSort => _barrioSort.value;
  int get currentListLength => _contactsList.length;

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
}
