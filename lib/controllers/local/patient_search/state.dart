part of 'controller.dart';

@freezed
abstract class PatientSearchState implements _$PatientSearchState {
  PatientSearchState._();
  factory PatientSearchState({
    @Default(<Resource>[]) List<Resource> fullPatientList,
    @Default(<Resource>[]) List<Resource> activePatientList,
    TextEditingController searchName,
  }) = _PatientSearchState;

  List<Resource> searchByName(String name) {
    var nameList = <Resource>[];
    for (final patient in fullPatientList) {
      if (lastCommaGivenName(patient as Patient)
          .toLowerCase()
          .contains(name.toLowerCase())) {
        nameList.add(patient);
      }
    }
    return nameList;
  }

  List<Resource> sortByName() {
    var nameList = activePatientList;
    nameList.sort((a, b) => lastCommaGivenName(a as Patient)
        .toLowerCase()
        .compareTo(lastCommaGivenName(b as Patient).toLowerCase()));
    return nameList;
  }

  List<Resource> sortByBirthdate() {
    var nameList = activePatientList;
    nameList.sort((a, b) =>
        (DateTime.tryParse((a as Patient).birthDate.toString()) ??
                DateTime(1900))
            .compareTo(
                (DateTime.tryParse((b as Patient).birthDate.toString())) ??
                    DateTime(1900)));
    return nameList;
  }

  List<Resource> sortByBarrio() {
    var nameList = activePatientList;
    nameList.sort((a, b) => ((a as Patient)?.address == null
            ? ''
            : (a as Patient).address[0]?.district ?? '')
        .compareTo((b as Patient)?.address == null
            ? ''
            : (b as Patient).address[0]?.district ?? ''));
    return nameList;
  }
}
