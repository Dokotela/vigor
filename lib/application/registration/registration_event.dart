import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.registerPressed() = RegisterPressed;
  const factory RegistrationEvent.updatePressed() = UpdatePressed;
  const factory RegistrationEvent.addContacts() = AddContacts;
  const factory RegistrationEvent.updateContacts() = UpdateContacts;
}
