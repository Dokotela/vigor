part of 'patient_search_controller.dart';

@freezed
abstract class PatientSearchState with _$PatientSearchState {
  const factory PatientSearchState({
    List<Resource> fullPatientList,
    List<Resource> activePatientList,
  }) = _PatientSearchState;

  factory PatientSearchState.initial(List<Resource> patientList) =>
      PatientSearchState(
        fullPatientList: patientList,
        activePatientList: patientList,
      );
}
