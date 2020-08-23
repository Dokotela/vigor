part of 'registration_controller.dart';

@freezed
abstract class RegistrationState with _$RegistrationState {
  factory RegistrationState({String text1, String text2, String text3}) =
      _RegistrationState;
  factory RegistrationState.initial() => RegistrationState(
      text1: 'Nothing yet', text2: 'Nothing yet', text3: 'Nothing yet');
}
