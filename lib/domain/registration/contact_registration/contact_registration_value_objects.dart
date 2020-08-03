import 'package:dartz/dartz.dart';

import 'package:vigor/domain/core/failures.dart';
import 'package:vigor/domain/core/value_objects.dart';
import 'package:vigor/domain/core/value_validators.dart';

class RegistrationRelation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RegistrationRelation(String input) {
    assert(input != null);
    return RegistrationRelation._(
      validateRegistrationRelation(input),
    );
  }

  const RegistrationRelation._(this.value);
}
