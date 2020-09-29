part of 'vaccines_controller.dart';

@freezed
abstract class VaccinesState with _$VaccinesState {
  const factory VaccinesState({
    PatientModel patient,
    String vaccineType,
    String vaccineName,
    DateTime vaccineDate,
    List<ImmunizationEvaluation> immEvals,
    List<ImmunizationRecommendationRecommendation> fullImmRecs,
    List<ImmunizationRecommendationRecommendation> displayImmRecs,
  }) = _VaccinesState;

  factory VaccinesState.initial(PatientModel patient) => VaccinesState(
        patient: patient,
        vaccineType: 'Enter Vaccine Type',
        vaccineName: 'Enter Vaccine Name',
        vaccineDate: DateTime.now(),
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
        vaccineType: 'Enter Vaccine Type',
        vaccineName: 'Enter Vaccine Name',
        vaccineDate: DateTime.now(),
        immEvals: immEvals,
        fullImmRecs: fullImmRecs,
        displayImmRecs: displayImmRecs,
      );

  factory VaccinesState.vaccineEntry({
    @required PatientModel patient,
    @required List<ImmunizationEvaluation> immEvals,
    @required List<ImmunizationRecommendationRecommendation> fullImmRecs,
    @required List<ImmunizationRecommendationRecommendation> displayImmRecs,
    String newType,
    String newName,
    DateTime date,
  }) =>
      VaccinesState(
        patient: patient,
        vaccineType: newType ?? 'Enter Vaccine Type',
        vaccineName: newName ?? 'Enter Vaccine Name',
        vaccineDate: date ?? DateTime.now(),
        immEvals: immEvals,
        fullImmRecs: fullImmRecs,
        displayImmRecs: displayImmRecs,
      );
}
