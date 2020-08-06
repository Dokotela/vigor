import 'package:dartz/dartz.dart';

import 'package:vigor/models/failures.dart';
import 'package:vigor/models/value_objects.dart';
import 'package:vigor/utils/value_validators.dart';

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
