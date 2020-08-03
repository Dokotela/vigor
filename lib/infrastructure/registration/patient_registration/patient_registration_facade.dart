import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:vigor/domain/registration/patient_registration/i_patient_registration_facade.dart';
import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

class PatientRegistrationFacade implements IPatientRegistrationFacade {
  PatientRegistrationFacade();

  @override
  Future<Either<RegistrationFailure, Unit>> register(
      {RegistrationName family,
      RegistrationName given,
      RegistrationGender gender,
      RegistrationBirthDate birthDate,
      RegistrationBarrio barrio}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either<RegistrationFailure, Unit>> update(
      {Patient patient,
      RegistrationName family,
      RegistrationName given,
      RegistrationGender gender,
      RegistrationBirthDate birthDate,
      RegistrationBarrio barrio}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
