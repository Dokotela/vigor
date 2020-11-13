import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../../_internal/utils/utils.dart';
import '../../../services/i_fhir_db.dart';
import '../../../ui/views/views.dart';

class PatientSearchController extends GetxController {
  static PatientSearchController get to => Get.find();
  final _fullPatientList = <Resource>[].obs;
  final _activePatientList = <Resource>[].obs;

  ///INIT
  Future init() async => loadList();

  /// GETTER FUNCTIONS
  String patientName(int index) =>
      lastCommaGivenName(_activePatientList[index] as Patient);
  String patientDob(int index) =>
      simpleDate((_activePatientList[index] as Patient).birthDate);
  String patientBarrio(int index) =>
      (_activePatientList[index] as Patient).address == null
          ? ''
          : (_activePatientList[index] as Patient).address[0].district;
  int get currentListLength => _activePatientList.length;

  ///EVENTS
  Future loadList() async {
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
      Get.to(HomeView(), arguments: _activePatientList[index]);
}
