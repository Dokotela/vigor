part of 'contact_registration_bloc.dart';

@freezed
abstract class ContactRegistrationEvent with _$ContactRegistrationEvent {
  const factory ContactRegistrationEvent.updateContacts() = UpdateContacts;
}
