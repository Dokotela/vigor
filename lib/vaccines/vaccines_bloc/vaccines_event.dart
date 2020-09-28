part of 'vaccines_controller.dart';

@freezed
abstract class VaccinesEvent with _$VaccinesEvent {
  const factory VaccinesEvent.enterBirthdate(DateTime birth) = EnterBirthdate;
  const factory VaccinesEvent.enterVaccine() = EnterVaccine;
}
