import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fhir/fhir_r4.dart';

import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

abstract class IContactRegistrationFacade {
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
