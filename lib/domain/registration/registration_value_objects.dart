import 'package:dartz/dartz.dart';

import 'package:vigor/domain/core/failures.dart';
import 'package:vigor/domain/core/value_objects.dart';
import 'package:vigor/domain/core/value_validators.dart';

class RegistrationName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RegistrationName(String input) {
    assert(input != null);
    return RegistrationName._(
      validateRegistrationName(input),
    );
  }

  const RegistrationName._(this.value);
}

class RegistrationGender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RegistrationGender(String input) {
    assert(input != null);
    return RegistrationGender._(
      validateRegistrationGender(input),
    );
  }

  const RegistrationGender._(this.value);
}

class RegistrationBarrio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RegistrationBarrio(String input) {
    assert(input != null);
    return RegistrationBarrio._(
      validateRegistrationBarrio(input),
    );
  }

  const RegistrationBarrio._(this.value);
}
