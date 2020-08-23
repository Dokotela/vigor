part of 'registration_controller.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  factory RegistrationEvent.text1(String text) = _Text1;
  factory RegistrationEvent.text2(String text) = _Text2;
  factory RegistrationEvent.text3(String text) = _Text3;
}
