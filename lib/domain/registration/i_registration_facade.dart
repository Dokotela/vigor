import 'package:dartz/dartz.dart';
import 'package:fhir/r4/resource_types/resource_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

abstract class IRegistrationFacade {
  Future<Either<RegistrationFailure, Unit>> register({
    @required RegistrationName family,
    @required RegistrationName given,
    @required String gender,
    @required DateTime birthDate,
    @required String address,
  });
  Future<Either<RegistrationFailure, Unit>> update({
    @required Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    @required String gender,
    @required DateTime birthDate,
    @required String neighborhood,
  });
  Future<Either<RegistrationFailure, Unit>> addContacts({
    @required RegistrationName family,
    @required RegistrationName given,
    @required String relationship,
    String neighborhood,
  });
  Future<Either<RegistrationFailure, Unit>> updateContacts({
    @required Patient patient,
    @required RegistrationName family,
    @required RegistrationName given,
    @required String relationship,
    String neighborhood,
  });
}
