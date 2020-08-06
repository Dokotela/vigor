import 'package:dartz/dartz.dart';
import 'package:vigor/models/failures.dart';

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

Either<ValueFailure<String>, String> validateRegistrationGender(String input) {
  if (includedInList(input, [
    'male',
    'female',
  ])) {
    return right(input);
  } else {
    return left(ValueFailure.notAGender(failedValue: input));
  }
}

Either<ValueFailure<String>, DateTime> validateRegistrationBirthDate(
    DateTime input) {
  if (input.isBefore(DateTime.now()) ||
      input.isAtSameMomentAs(DateTime.now())) {
    return right(input);
  } else {
    return left(ValueFailure.shortRegistrationName(
        failedValue: input.toIso8601String()));
  }
}

Either<ValueFailure<String>, String> validateRegistrationBarrio(String input) {
  if (includedInList(input, [
    'Filiu',
    'La 41',
    'Carretera',
    'Villa Verde',
    'Cachipero',
    'Puerto Rico',
    'Kilombo'
  ])) {
    return right(input);
  } else {
    return left(ValueFailure.notABarrio(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateRegistrationRelation(
    String input) {
  if (includedInList(input, [
    'mother',
    'grandmother',
    'aunt',
    'sister',
    'father',
    'grandfather',
    'uncle',
    'brother',
    'other',
  ])) {
    return right(input);
  } else {
    return left(ValueFailure.notARelation(failedValue: input));
  }
}

bool includedInList(String input, List<String> itemList) =>
    itemList.contains(input);
