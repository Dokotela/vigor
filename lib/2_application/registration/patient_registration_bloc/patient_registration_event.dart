part of 'patient_registration_controller.dart';

@freezed
abstract class PatientRegistrationEvent with _$PatientRegistrationEvent {
  const factory PatientRegistrationEvent.gender(String gender) = _Gender;
  const factory PatientRegistrationEvent.birthDate(DateTime birthDate) =
      _BirthDate;
  const factory PatientRegistrationEvent.barrio(String barrio) = _Barrio;
  const factory PatientRegistrationEvent.register() = _Register;
}
