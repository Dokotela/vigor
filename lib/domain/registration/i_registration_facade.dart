import 'package:dartz/dartz.dart';
import 'package:fhir/r4/resource_types/resource_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

abstract class IRegistrationFacade {
  Future<Either<RegistrationFailure, Unit>> register({
    @required RegistrationName family,
    @required RegistrationName given,
    @required RegistrationGender gender,
    @required DateTime birthDate,
    @required RegistrationBarrio barrio,
  });
  Future<Either<RegistrationFailure, Unit>> update({
    @required Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    @required RegistrationGender gender,
    @required DateTime birthDate,
    @required RegistrationBarrio barrio,
  });
  Future<Either<RegistrationFailure, Unit>> addContacts({
    @required RegistrationName family1,
    @required RegistrationName given1,
    @required String relationship1,
    String neighborhood1,
    RegistrationName family2,
    RegistrationName given2,
    String relationship2,
    String neighborhood2,
    RegistrationName family3,
    RegistrationName given3,
    String relationship3,
    String neighborhood3,
  });
  Future<Either<RegistrationFailure, Unit>> updateContacts({
    @required Patient patient,
    @required RegistrationName family1,
    @required RegistrationName given1,
    @required String relationship1,
    String neighborhood1,
    RegistrationName family2,
    RegistrationName given2,
    String relationship2,
    String neighborhood2,
    RegistrationName family3,
    RegistrationName given3,
    String relationship3,
    String neighborhood3,
  });
}
