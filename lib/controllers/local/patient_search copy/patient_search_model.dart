part of 'controller.dart';

class PatientSearchModel {
  final _fullPatientList = <Resource>[];
  final _activePatientList = <Resource>[];
  final _searchName = TextEditingController();

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
  TextEditingController get searchName => _searchName;
  int get currentListLength => _activePatientList.length;

  ///EVENTS
  Future loadList() async {
    final newList = (await IFhirDb().returnListOfSingleResourceType('Patient'))
        .fold((l) => <Resource>[], (r) => r.toList());
    _fullPatientList.addAll(newList);
    _activePatientList.addAll(newList);
  }

  void searchPatientByName(String name) {
    var nameList = <Resource>[];
    for (final patient in _fullPatientList) {
      if (lastCommaGivenName(patient as Patient)
          .toLowerCase()
          .contains(name.toLowerCase())) {
        nameList.add(patient);
      }
    }
  }

  void sortByName() {
    var nameList = _activePatientList;
    nameList.sort((a, b) => lastCommaGivenName(a as Patient)
        .toLowerCase()
        .compareTo(lastCommaGivenName(b as Patient).toLowerCase()));
    _activePatientList.clear();
    _activePatientList.addAll(nameList);
  }

  void sortByBirthdate() {
    var nameList = _activePatientList;
    nameList.sort((a, b) =>
        (DateTime.tryParse((a as Patient).birthDate.toString()) ??
                DateTime(1900))
            .compareTo(
                (DateTime.tryParse((b as Patient).birthDate.toString())) ??
                    DateTime(1900)));
    _activePatientList.clear();
    _activePatientList.addAll(nameList);
  }

  void sortByBarrio() {
    var nameList = _activePatientList;
    nameList.sort((a, b) => ((a as Patient)?.address == null
            ? ''
            : (a as Patient).address[0]?.district ?? '')
        .compareTo((b as Patient)?.address == null
            ? ''
            : (b as Patient).address[0]?.district ?? ''));
    _activePatientList.clear();
    _activePatientList.addAll(nameList);
  }

  void selectPatient(int index) =>
      Get.to(HomeView(), arguments: _activePatientList[index]);
}
