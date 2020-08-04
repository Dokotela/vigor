import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhir/fhir_r4.dart';

import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

abstract class IPatientRegistrationFacade {
  Future<Either<RegistrationFailure, Unit>> register({
    Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    @required RegistrationGender gender,
    @required RegistrationBirthDate birthDate,
    @required RegistrationBarrio barrio,
  });
  Future<Either<RegistrationFailure, Unit>> update({
    @required Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    @required RegistrationGender gender,
    @required RegistrationBirthDate birthDate,
    @required RegistrationBarrio barrio,
  });
}
