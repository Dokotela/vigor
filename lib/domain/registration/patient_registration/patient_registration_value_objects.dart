import 'package:dartz/dartz.dart';

import 'package:vigor/domain/core/failures.dart';
import 'package:vigor/domain/core/value_objects.dart';
import 'package:vigor/domain/core/value_validators.dart';

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

class RegistrationBirthDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<String>, DateTime> value;

  factory RegistrationBirthDate(DateTime input) {
    assert(input != null);
    return RegistrationBirthDate._(
      validateRegistrationBirthDate(input),
    );
  }

  const RegistrationBirthDate._(this.value);
}
