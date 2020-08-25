part of 'patient_immunizations_controller.dart';

@freezed
abstract class PatientImmunizationsState with _$PatientImmunizationsState {
  const factory PatientImmunizationsState({
    PatientModel patient,
    List<ImmunizationEvaluation> immEvals,
    List<ImmunizationRecommendationRecommendation> fullImmRecs,
    List<ImmunizationRecommendationRecommendation> displayImmRecs,
  }) = _PatientImmunizationsState;

  factory PatientImmunizationsState.initial(PatientModel patient) =>
      PatientImmunizationsState(
        patient: patient,
        immEvals: [],
        fullImmRecs: [],
        displayImmRecs: [],
      );
}
