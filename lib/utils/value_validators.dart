import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:vigor/models/failures.dart';

Either<ValueFailure<String>, String> validateUsername(String input) =>
    input.length >= 6
        ? right(input)
        : left(ValueFailure.invalidUsername(failedValue: input));

Either<ValueFailure<String>, String> validatePassword(String input) => input
            .length >=
        10
    ? right(input)
    : left(ValueFailure.shortPassword(failedValue: 'Short password: $input'));

Either<ValueFailure<String>, String> validateRegistrationName(String input) =>
    input.length >= 2
        ? right(input)
        : left(ValueFailure.shortRegistrationName(failedValue: input));

Either<ValueFailure<String>, String> validateRegistrationGender(String input) =>
    includedInList(input, ['male', 'female'])
        ? right(input)
        : left(ValueFailure.notAGender(failedValue: input));

Either<ValueFailure<String>, Date> validateRegistrationBirthDate(Date input) {
  return input.value.fold(
    (ifLeft) =>
        left(ValueFailure.fhirPrimitiveFail(failedValue: ifLeft.failedValue)),
    (ifRight) => ifRight.isAfter(DateTime.now())
        ? left(ValueFailure.futureDate(failedValue: input.toString()))
        : right(input),
  );
}

Either<ValueFailure<String>, String> validateRegistrationBarrio(String input) =>
    includedInList(input, [
      'Filiu',
      'La 41',
      'Carretera',
      'Villa Verde',
      'Cachipero',
      'Puerto Rico',
      'Kilombo'
    ])
        ? right(input)
        : left(ValueFailure.notABarrio(failedValue: input));

Either<ValueFailure<String>, String> validateRegistrationRelation(
        String input) =>
    includedInList(input, [
      'mother',
      'grandmother',
      'aunt',
      'sister',
      'father',
      'grandfather',
      'uncle',
      'brother',
      'other',
    ])
        ? right(input)
        : left(ValueFailure.notARelation(failedValue: input));

bool includedInList(String input, List<String> itemList) =>
    itemList.contains(input);
