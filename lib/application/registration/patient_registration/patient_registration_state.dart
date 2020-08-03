part of 'patient_registration_bloc.dart';

@freezed
abstract class PatientRegistrationState with _$PatientRegistrationState {
  const factory PatientRegistrationState({
    Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    @required RegistrationGender gender,
    @required RegistrationBirthDate birthDate,
    @required RegistrationBarrio barrio,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required
        Option<Either<RegistrationFailure, Unit>>
            registrationFailureOrSuccessOption,
  }) = _RegisterPatient;

  factory PatientRegistrationState.initial() => PatientRegistrationState(
        family: RegistrationName(''),
        given: RegistrationName(''),
        gender: RegistrationGender('female'),
        birthDate: RegistrationBirthDate(DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)),
        barrio: RegistrationBarrio(''),
        isSubmitting: false,
        showErrorMessages: false,
        registrationFailureOrSuccessOption: none(),
      );
}
