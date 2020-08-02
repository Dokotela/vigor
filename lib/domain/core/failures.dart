import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidUsername({
    @required T failedValue,
  }) = InvalidUsername<T>;
  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.shortRegistrationName({
    @required T failedValue,
  }) = ShortRegistrationName<T>;
  const factory ValueFailure.notAGender({
    @required T failedValue,
  }) = NotAGender<T>;
  const factory ValueFailure.notABarrio({
    @required T failedValue,
  }) = NotABarrio<T>;
}
