import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../../_internal/utils/utils.dart';
import '../../../models/data/patient_model.dart';
import '../../../routes/routes.dart';
import '../../../services/i_fhir_db.dart';

class PatientSearchController extends GetxController {
  /// PROPERTIES
  final _fullPatientList = <Resource>[].obs;
  final _activePatientList = <Resource>[].obs;
  final _nameSort = 0.obs;
  final _birthDateSort = 0.obs;
  final _barrioSort = 0.obs;

  ///INIT
  @override
  Future onInit() async {
    await _loadList();
    sortByName();
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String patientName(int index) =>
      lastCommaGivenName((_activePatientList[index] as Patient).name);
  String patientDob(int index) =>
      dateFromFhirDate((_activePatientList[index] as Patient).birthDate);
  String patientBarrio(int index) =>
      (_activePatientList[index] as Patient).address == null
          ? ''
          : (_activePatientList[index] as Patient).address[0].district;
  int get currentListLength => _activePatientList.length;
  int get nameSort => _nameSort.value;
  int get birthDateSort => _birthDateSort.value;
  int get barrioSort => _barrioSort.value;

  /// EVENTS
  Future _loadList() async {
    final newList =
        (await IFhirDb().returnListOfSingleResourceType(R4ResourceType.Patient))
            .fold((l) => <Resource>[], (r) => r.toList());
    _fullPatientList.addAll(newList);
    _activePatientList.addAll(newList);
  }

  void searchPatientByName(String name) {
    _activePatientList.assignAll(<Resource>[]);
    for (final patient in _fullPatientList) {
      if (lastCommaGivenName((patient as Patient).name)
          .toLowerCase()
          .contains(name.toLowerCase())) {
        _activePatientList.add(patient);
      }
    }
  }

  void sortByName() {
    _birthDateSort.value = 0;
    _barrioSort.value = 0;
    if (_nameSort.value == 1) {
      _nameSort.value = 2;
      _activePatientList.sort((a, b) => _sortName(b, a));
    } else {
      _nameSort.value = 1;
      _activePatientList.sort((a, b) => _sortName(a, b));
    }
  }

  int _sortName(Patient a, Patient b) => lastCommaGivenName(a.name)
      .toLowerCase()
      .compareTo(lastCommaGivenName(b.name).toLowerCase());

  void sortByBirthdate() {
    _nameSort.value = 0;
    _barrioSort.value = 0;
    if (_birthDateSort.value == 1) {
      _birthDateSort.value = 2;
      _activePatientList.sort((a, b) => _sortPatient(b, a));
    } else {
      _birthDateSort.value = 1;
      _activePatientList.sort((a, b) => _sortPatient(a, b));
    }
  }

  int _sortPatient(a, b) =>
      (DateTime.tryParse((a as Patient).birthDate.toString()) ?? DateTime(1900))
          .compareTo((DateTime.tryParse((b as Patient).birthDate.toString())) ??
              DateTime(1900));

  void sortByBarrio() {
    _nameSort.value = 0;
    _birthDateSort.value = 0;
    if (_barrioSort.value == 1) {
      _barrioSort.value = 2;
      _activePatientList.sort((a, b) => _sortBarrio(b, a));
    } else {
      _barrioSort.value = 1;
      _activePatientList.sort((a, b) => _sortBarrio(a, b));
    }
  }

  int _sortBarrio(a, b) => ((a as Patient)?.address == null
          ? ''
          : (a as Patient).address[0]?.district ?? '')
      .compareTo((b as Patient)?.address == null
          ? ''
          : (b as Patient).address[0]?.district ?? '');

  void selectPatient(int index) => Get.toNamed(AppRoutes.PATIENT_HOME_PAGE,
      arguments: PatientModel(patient: _activePatientList[index]));
}
