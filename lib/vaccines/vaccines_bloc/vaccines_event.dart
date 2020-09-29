part of 'vaccines_controller.dart';

@freezed
abstract class VaccinesEvent with _$VaccinesEvent {
  const factory VaccinesEvent.enterBirthdate(DateTime birth) = EnterBirthdate;
  const factory VaccinesEvent.enterVaccine() = EnterVaccine;
  const factory VaccinesEvent.newVaccineType(String type) = NewVaccineType;
  const factory VaccinesEvent.newVaccineName(String name) = NewVaccineName;
  const factory VaccinesEvent.newVaccineDate(DateTime date) = NewVaccineDate;
}
