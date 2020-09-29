part of 'vaccines_controller.dart';

@freezed
abstract class VaccinesState with _$VaccinesState {
  const factory VaccinesState({
    PatientModel patient,
    List<ImmunizationEvaluation> immEvals,
    List<ImmunizationRecommendationRecommendation> fullImmRecs,
    List<ImmunizationRecommendationRecommendation> displayImmRecs,
  }) = _VaccinesState;

  factory VaccinesState.initial(PatientModel patient) => VaccinesState(
        patient: patient,
        immEvals: [],
        fullImmRecs: [],
        displayImmRecs: [],
      );

  factory VaccinesState.loadValues({
    PatientModel patient,
    List<ImmunizationEvaluation> immEvals,
    List<ImmunizationRecommendationRecommendation> fullImmRecs,
    List<ImmunizationRecommendationRecommendation> displayImmRecs,
  }) =>
      VaccinesState(
        patient: patient,
        immEvals: immEvals,
        fullImmRecs: fullImmRecs,
        displayImmRecs: displayImmRecs,
      );
}
