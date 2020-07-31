import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vigor/domain/auth/auth_failure.dart';
import 'package:vigor/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword({
    @required Username username,
    @required Password password,
  });
}
