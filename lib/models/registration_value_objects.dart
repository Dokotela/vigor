import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';

import 'package:vigor/models/failures.dart';
import 'package:vigor/models/value_objects.dart';
import 'package:vigor/utils/value_validators.dart';

class RegistrationName extends ValueObject<String> {
  factory RegistrationName(String input) {
    assert(input != null);
    return RegistrationName._(
      validateRegistrationName(input),
    );
  }

  const RegistrationName._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class RegistrationBarrio extends ValueObject<String> {
  factory RegistrationBarrio(String input) {
    assert(input != null);
    return RegistrationBarrio._(
      validateRegistrationBarrio(input),
    );
  }

  const RegistrationBarrio._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class RegistrationBirthDate extends ValueObject<Date> {
  factory RegistrationBirthDate(Date input) {
    assert(input != null);
    return RegistrationBirthDate._(
      validateRegistrationBirthDate(input),
    );
  }

  const RegistrationBirthDate._(this.value);

  @override
  final Either<ValueFailure<String>, Date> value;
}

class RegistrationRelation extends ValueObject<String> {
  factory RegistrationRelation(String input) {
    assert(input != null);
    return RegistrationRelation._(
      validateRegistrationRelation(input),
    );
  }

  const RegistrationRelation._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
