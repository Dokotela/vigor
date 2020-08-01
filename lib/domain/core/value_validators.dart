import 'package:dartz/dartz.dart';
import 'package:vigor/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 10) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateRegistrationName(String input) {
  if (input.length >= 2) {
    return right(input);
  } else {
    return left(ValueFailure.shortRegistrationName(failedValue: input));
  }
}

Either<ValueFailure<String>, DateTime> noBirthDate(DateTime input) {
  if (input == null) {
    return right(input);
  } else {
    return left(ValueFailure.noBirthDate(failedValue: 'No birthdate provided'));
  }
}

Either<ValueFailure<String>, DateTime> noNeighborhood(DateTime input) {
  if (input == null) {
    return right(input);
  } else {
    return left(
        ValueFailure.noNeighborhood(failedValue: 'No neighborhood given'));
  }
}

Either<ValueFailure<String>, DateTime> noRelation(DateTime input) {
  if (input == null) {
    return right(input);
  } else {
    return left(
        ValueFailure.noRelation(failedValue: 'No relationship specified'));
  }
}
