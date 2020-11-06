part of 'patient_imm_hx_controller.dart';

@freezed
abstract class PatientImmHxState with _$PatientImmHxState {
  const factory PatientImmHxState({
    PatientModel patient,
    List<Immunization> pastImmunizations,
  }) = _PatientImmHxState;

  factory PatientImmHxState.initial(PatientModel patient) => PatientImmHxState(
        patient: patient,
        pastImmunizations: patient.pastImmunizations,
      );
}
