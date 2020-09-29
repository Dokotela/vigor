part of 'vaccines_controller.dart';

@freezed
abstract class VaccinesState with _$VaccinesState {
  const factory VaccinesState({
    String name,
    PatientModel patient,
    List<ImmunizationEvaluation> immEvals,
    List<ImmunizationRecommendationRecommendation> fullImmRecs,
    List<ImmunizationRecommendationRecommendation> displayImmRecs,
  }) = _VaccinesState;

  factory VaccinesState.initial() => const VaccinesState(
        patient: null,
        immEvals: [],
        fullImmRecs: [],
        displayImmRecs: [],
      );

  factory VaccinesState.loadPatient(PatientModel patient) => VaccinesState(
        patient: patient,
        immEvals: [],
        fullImmRecs: [],
        displayImmRecs: [],
      );
}
