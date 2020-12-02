import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../../_internal/utils/utils.dart';
import '../../../routes/routes.dart';
import '../../../services/i_fhir_db.dart';

class PatientSearchController extends GetxController {
  /// PROPERTIES
  final _fullPatientList = <Resource>[].obs;
  final _activePatientList = <Resource>[].obs;
  final labels = Get.arguments;

  ///INIT
  @override
  Future onInit() async {
    await _loadList();
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String patientName(int index) =>
      lastCommaGivenName(_activePatientList[index] as Patient);
  String patientDob(int index) =>
      dateFromFhirDate((_activePatientList[index] as Patient).birthDate);
  String patientBarrio(int index) =>
      (_activePatientList[index] as Patient).address == null
          ? ''
          : (_activePatientList[index] as Patient).address[0].district;
  int get currentListLength => _activePatientList.length;

  /// EVENTS
  Future _loadList() async {
    final newList = (await IFhirDb().returnListOfSingleResourceType('Patient'))
        .fold((l) => <Resource>[], (r) => r.toList());
    _fullPatientList.addAll(newList);
    _activePatientList.addAll(newList);
  }

  void searchPatientByName(String name) {
    _activePatientList.value = <Resource>[];
    for (final patient in _fullPatientList) {
      if (lastCommaGivenName(patient as Patient)
          .toLowerCase()
          .contains(name.toLowerCase())) {
        _activePatientList.add(patient);
      }
    }
  }

  void sortByName() =>
      _activePatientList.sort((a, b) => lastCommaGivenName(a as Patient)
          .toLowerCase()
          .compareTo(lastCommaGivenName(b as Patient).toLowerCase()));

  void sortByBirthdate() => _activePatientList.sort((a, b) =>
      (DateTime.tryParse((a as Patient).birthDate.toString()) ?? DateTime(1900))
          .compareTo((DateTime.tryParse((b as Patient).birthDate.toString())) ??
              DateTime(1900)));

  void sortByBarrio() =>
      _activePatientList.sort((a, b) => ((a as Patient)?.address == null
              ? ''
              : (a as Patient).address[0]?.district ?? '')
          .compareTo((b as Patient)?.address == null
              ? ''
              : (b as Patient).address[0]?.district ?? ''));

  void selectPatient(int index) =>
      Get.toNamed(AppRoutes.PATIENT_HOME, arguments: _activePatientList[index]);
}
