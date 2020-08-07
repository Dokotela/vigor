import 'package:dartz/dartz.dart';

import 'package:vigor/models/failures.dart';
import 'package:vigor/models/value_objects.dart';
import 'package:vigor/utils/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    assert(input != null);
    return Username._(
      validateUsername(input),
    );
  }

  const Username._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
