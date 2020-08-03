part of 'contact_registration_bloc.dart';

@freezed
abstract class ContactRegistrationState with _$ContactRegistrationState {
  const factory ContactRegistrationState({
    Patient currentPatient,
    @required RegistrationName family1,
    @required RegistrationName given1,
    @required String relationship1,
    String neighborhood1,
    RegistrationName family2,
    RegistrationName given2,
    String relationship2,
    String neighborhood2,
    RegistrationName family3,
    RegistrationName given3,
    String relationship3,
    String neighborhood3,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required
        Option<Either<RegistrationFailure, Unit>>
            registrationFailureOrSuccessOption,
  }) = _ContactRegistrationState;

  factory ContactRegistrationState.initial() => ContactRegistrationState(
        family1: RegistrationName(''),
        given1: RegistrationName(''),
        relationship1: '',
        neighborhood1: '',
        family2: RegistrationName(''),
        given2: RegistrationName(''),
        relationship2: '',
        neighborhood2: '',
        family3: RegistrationName(''),
        given3: RegistrationName(''),
        relationship3: '',
        neighborhood3: '',
        isSubmitting: false,
        showErrorMessages: false,
        registrationFailureOrSuccessOption: none(),
      );
}
