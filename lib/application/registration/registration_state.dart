part of 'registration_bloc.dart';

@freezed
abstract class RegistrationState with _$RegistrationState {
  const factory RegistrationState.patient({
    Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    RegistrationGender gender,
    DateTime birthDate,
    @required RegistrationBarrio barrio,
    @required bool showErrorMessages,
    @required
        Option<Either<RegistrationFailure, Unit>>
            registrationFailureOrSuccessOption,
  }) = RegistrationPatient;

  factory RegistrationState.initialPatient() => RegistrationState.patient(
        family: RegistrationName(''),
        given: RegistrationName(''),
        barrio: RegistrationBarrio(''),
        showErrorMessages: false,
        registrationFailureOrSuccessOption: none(),
      );

  const factory RegistrationState.contacts({
    Patient patient,
    @required RegistrationName family1,
    @required RegistrationName given1,
    String relationship1,
    String neighborhood1,
    RegistrationName family2,
    RegistrationName given2,
    String relationship2,
    String neighborhood2,
    RegistrationName family3,
    RegistrationName given3,
    String relationship3,
    String neighborhood3,
    @required bool showErrorMessages,
    @required
        Option<Either<RegistrationFailure, Unit>>
            registrationFailureOrSuccessOption,
  }) = RegistrationContacts;

  factory RegistrationState.initialContacts() => RegistrationState.contacts(
        family1: RegistrationName(''),
        given1: RegistrationName(''),
        showErrorMessages: false,
        registrationFailureOrSuccessOption: none(),
      );
}
