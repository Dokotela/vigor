import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/utils/utils.dart';
import 'package:vigor/_internal/utils/validators.dart';
import 'package:vigor/services/i_fhir_db.dart';
import 'package:vigor/ui/views/views.dart';
import '../../../_internal/constants/constants.dart';
import '../../../models/data/patient_model.dart';

class ContactRegistrationController extends GetxController {
  // PROPERTIES
  final _patient = PatientModel().obs;

  final _familyNameError1 = ''.obs;
  final _givenNameError1 = ''.obs;
  final _barrio1 = 'Neighborhood'.obs;
  final _barrioError1 = ''.obs;
  final _relation1 = 'Relationship'.obs;
  final _relationError1 = ''.obs;

  final _familyNameError2 = ''.obs;
  final _givenNameError2 = ''.obs;
  final _barrio2 = 'Neighborhood'.obs;
  final _barrioError2 = ''.obs;
  final _relation2 = 'Relationship'.obs;
  final _relationError2 = ''.obs;

  // // INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    _barrio1.value = _contactBarrio(1);
    _relation1.value = _contactRelation(1);
    _barrio2.value = _contactBarrio(2);
    _relation2.value = _contactRelation(2);
    super.onInit();
  }

  // GETTERS
  List<String> get barriosList => barrios;
  List<String> get relationList => relationship_types;

  String get initialGivenName1 => _givenName(1);
  String get initialFamilyName1 => _familyName(1);
  String get familyNameError1 => _familyNameError1.value;
  String get givenNameError1 => _givenNameError1.value;
  String get barrio1 => _barrio1.value;
  String get barrioError1 => _barrioError1.value;
  String get relation1 => _relation1.value;
  String get relationError1 => _relationError1.value;

  String get initialGivenName2 => _givenName(2);
  String get initialFamilyName2 => _familyName(2);
  String get familyNameError2 => _familyNameError2.value;
  String get givenNameError2 => _givenNameError2.value;
  String get barrio2 => _barrio2.value;
  String get barrioError2 => _barrioError2.value;
  String get relation2 => _relation2.value;
  String get relationError2 => _relationError2.value;

  String _givenName(int number) => _patient?.value?.patient?.contact == null
      ? ''
      : _patient.value.patient.contact[number] == null
          ? ''
          : _patient.value.patient.contact[number].name == null
              ? ''
              : _patient.value.patient.contact[number].name.given == null
                  ? ''
                  : _patient.value.patient.contact[number].name.given[0];

  String _familyName(int number) => _patient?.value?.patient?.contact == null
      ? ''
      : _patient.value.patient.contact[number] == null
          ? ''
          : _patient.value.patient.contact[number].name == null
              ? ''
              : _patient.value.patient.contact[number].name.family == null
                  ? ''
                  : _patient.value.patient.contact[number].name.family;

  String _contactBarrio(int number) => _patient?.value?.patient?.contact == null
      ? 'Neighborhood'
      : _patient?.value?.patient?.contact[number]?.address?.district ??
          'Neighborhood';

  String _contactRelation(int number) {
    if (_patient?.value?.patient?.contact == null) {
      return 'Relationship';
    } else if (_patient?.value?.patient?.contact[number]?.relationship ==
        null) {
      return 'Relationship';
    }
    for (var relationship
        in _patient.value.patient.contact[number].relationship) {
      for (var relation in relationship.coding) {
        if (relationship_types.contains(relation.display.toLowerCase())) {
          return relation.display.toLowerCase();
        } else if (relationship_types
            .contains(relation.code.toString().toLowerCase())) {
          return relation.code.toString().toLowerCase();
        }
      }
    }
    return 'Relationship';
  }

  // EVENTS
  void barrio1Event(String barrio1) => _barrio1.value = barrio1;
  void barrio2Event(String barrio2) => _barrio2.value = barrio2;
  void relation1Event(String relation1) => _relation1.value = relation1;
  void relation2Event(String relation2) => _relation2.value = relation2;

  Future<void> registerEvent({
    String familyName1,
    String givenName1,
    String familyName2,
    String givenName2,
  }) async {
    if (isValidRegistrationName(familyName1) &&
        isValidRegistrationName(givenName1) &&
        isValidRegistrationBarrio(barrio1) &&
        isValidRegistrationRelation(relation1)) {
      final newContact1 =
          formatPatientContact(familyName1, givenName1, barrio1, relation1);
      _patient.value.patient.contact == null
          ? _patient.value.patient =
              _patient.value.patient.copyWith(contact: [newContact1])
          : _patient.value.patient.contact.isEmpty
              ? _patient.value.patient.contact.add(newContact1)
              : _patient.value.patient.contact.contains(newContact1)
                  ? null
                  : _patient.value.patient.contact.add(newContact1);
    } else {
      _familyNameError1.value = !isValidRegistrationName(familyName1)
          ? 'Enter family name'
          : _familyNameError1.value;
      _givenNameError1.value = !isValidRegistrationName(givenName1)
          ? 'Enter other names'
          : _givenNameError1.value;
      _relationError1.value = !isValidRegistrationRelation(relation1)
          ? 'Please select relationship'
          : '';
      _barrioError1.value = !isValidRegistrationBarrio(barrio1)
          ? 'Please select neighborhood'
          : '';
    }

    if (isValidRegistrationName(familyName2) &&
        isValidRegistrationName(givenName2) &&
        isValidRegistrationBarrio(barrio2) &&
        isValidRegistrationRelation(relation2)) {
      final newContact2 =
          formatPatientContact(familyName2, givenName2, barrio2, relation2);
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
      (r) => Get.offAll(HomePage(), arguments: r as Patient),
    );
  }
}
