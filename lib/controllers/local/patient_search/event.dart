part of 'controller.dart';

@freezed
abstract class PatientSearchEvent with _$PatientSearchEvent {
  const factory PatientSearchEvent.loadList({List<Resource> patientList}) =
      _LoadList;
  const factory PatientSearchEvent.searchPatientByName({String name}) =
      _SearchPatientByName;
  const factory PatientSearchEvent.sortPatientsByName() = _SortPatientsByName;
  const factory PatientSearchEvent.sortPatientsByBirthdate() =
      _SortPatientsByBirthdate;
  const factory PatientSearchEvent.sortPatientsByBarrio() =
      _SortPatientsByBarrio;
  const factory PatientSearchEvent.selectPatient({int index}) = _SelectPatient;
}
