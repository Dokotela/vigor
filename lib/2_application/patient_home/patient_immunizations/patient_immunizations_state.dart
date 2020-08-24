part of 'patient_immunizations_controller.dart';

@freezed
abstract class PatientImmunizationsState with _$PatientImmunizationsState {
  const factory PatientImmunizationsState({
    PatientModel patient,
    List<ImmunizationRecommendationRecommendation> fullImmRecs,
    List<ImmunizationRecommendationRecommendation> displayImmRecs,
  }) = _PatientImmunizationsState;

  factory PatientImmunizationsState.initial(PatientModel patient) =>
      PatientImmunizationsState(
        patient: patient,
        fullImmRecs: [],
        displayImmRecs: [],
      );
}
