// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ShortRegistrationName<T> shortRegistrationName<T>({@required T failedValue}) {
    return ShortRegistrationName<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortRegistrationName(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortRegistrationName(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $ShortRegistrationNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortRegistrationNameCopyWith(ShortRegistrationName<T> value,
          $Res Function(ShortRegistrationName<T>) then) =
      _$ShortRegistrationNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortRegistrationNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortRegistrationNameCopyWith<T, $Res> {
  _$ShortRegistrationNameCopyWithImpl(ShortRegistrationName<T> _value,
      $Res Function(ShortRegistrationName<T>) _then)
      : super(_value, (v) => _then(v as ShortRegistrationName<T>));

  @override
  ShortRegistrationName<T> get _value =>
      super._value as ShortRegistrationName<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortRegistrationName<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortRegistrationName<T> implements ShortRegistrationName<T> {
  const _$ShortRegistrationName({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortRegistrationName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortRegistrationName<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortRegistrationNameCopyWith<T, ShortRegistrationName<T>> get copyWith =>
      _$ShortRegistrationNameCopyWithImpl<T, ShortRegistrationName<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result shortRegistrationName(T failedValue),
  }) {
    assert(shortRegistrationName != null);
    return shortRegistrationName(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result shortRegistrationName(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortRegistrationName != null) {
      return shortRegistrationName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
  }) {
    assert(shortRegistrationName != null);
    return shortRegistrationName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortRegistrationName != null) {
      return shortRegistrationName(this);
    }
    return orElse();
  }
}

abstract class ShortRegistrationName<T> implements ValueFailure<T> {
  const factory ShortRegistrationName({@required T failedValue}) =
      _$ShortRegistrationName<T>;

  @override
  T get failedValue;
  @override
  $ShortRegistrationNameCopyWith<T, ShortRegistrationName<T>> get copyWith;
}
