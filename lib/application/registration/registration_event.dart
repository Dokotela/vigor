part of 'registration_bloc.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.registerPressed() = RegisterPressed;
  const factory RegistrationEvent.updatePressed() = UpdatePressed;
  const factory RegistrationEvent.addContacts() = AddContacts;
  const factory RegistrationEvent.updateContacts() = UpdateContacts;
}
