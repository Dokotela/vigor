import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/domain/core/errors.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<String>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
