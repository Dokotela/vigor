part of 'patient_search_controller.dart';

@freezed
abstract class PatientSearchState with _$PatientSearchState {
  const factory PatientSearchState({
    List<Resource> fullPatientList,
    List<Resource> activePatientList,
  }) = _PatientSearchState;

  factory PatientSearchState.initial() => const PatientSearchState(
        fullPatientList: <Resource>[],
        activePatientList: <Resource>[],
      );
  factory PatientSearchState.loadList(List<Resource> patientList) =>
      PatientSearchState(
        fullPatientList: patientList,
        activePatientList: patientList,
      );
}
