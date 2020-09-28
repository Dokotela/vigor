part of 'home_controller.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.registerPatient(String newName) = NewName;
  const factory HomeEvent.choosePatient(String name) = SelectPatient;
}
