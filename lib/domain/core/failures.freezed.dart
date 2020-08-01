// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortRegistrationName<T> shortRegistrationName<T>({@required T failedValue}) {
    return ShortRegistrationName<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NoBirthDate<T> noBirthDate<T>({@required T failedValue}) {
    return NoBirthDate<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NoNeighborhood<T> noNeighborhood<T>({@required T failedValue}) {
    return NoNeighborhood<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NoRelation<T> noRelation<T>({@required T failedValue}) {
    return NoRelation<T>(
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
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
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

abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({@required T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue;
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
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
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return shortRegistrationName(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
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
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return shortRegistrationName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
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

abstract class $NoBirthDateCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NoBirthDateCopyWith(
          NoBirthDate<T> value, $Res Function(NoBirthDate<T>) then) =
      _$NoBirthDateCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$NoBirthDateCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoBirthDateCopyWith<T, $Res> {
  _$NoBirthDateCopyWithImpl(
      NoBirthDate<T> _value, $Res Function(NoBirthDate<T>) _then)
      : super(_value, (v) => _then(v as NoBirthDate<T>));

  @override
  NoBirthDate<T> get _value => super._value as NoBirthDate<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NoBirthDate<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NoBirthDate<T> implements NoBirthDate<T> {
  const _$NoBirthDate({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.noBirthDate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoBirthDate<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NoBirthDateCopyWith<T, NoBirthDate<T>> get copyWith =>
      _$NoBirthDateCopyWithImpl<T, NoBirthDate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return noBirthDate(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noBirthDate != null) {
      return noBirthDate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return noBirthDate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noBirthDate != null) {
      return noBirthDate(this);
    }
    return orElse();
  }
}

abstract class NoBirthDate<T> implements ValueFailure<T> {
  const factory NoBirthDate({@required T failedValue}) = _$NoBirthDate<T>;

  @override
  T get failedValue;
  @override
  $NoBirthDateCopyWith<T, NoBirthDate<T>> get copyWith;
}

abstract class $NoNeighborhoodCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NoNeighborhoodCopyWith(
          NoNeighborhood<T> value, $Res Function(NoNeighborhood<T>) then) =
      _$NoNeighborhoodCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$NoNeighborhoodCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoNeighborhoodCopyWith<T, $Res> {
  _$NoNeighborhoodCopyWithImpl(
      NoNeighborhood<T> _value, $Res Function(NoNeighborhood<T>) _then)
      : super(_value, (v) => _then(v as NoNeighborhood<T>));

  @override
  NoNeighborhood<T> get _value => super._value as NoNeighborhood<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NoNeighborhood<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NoNeighborhood<T> implements NoNeighborhood<T> {
  const _$NoNeighborhood({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.noNeighborhood(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoNeighborhood<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NoNeighborhoodCopyWith<T, NoNeighborhood<T>> get copyWith =>
      _$NoNeighborhoodCopyWithImpl<T, NoNeighborhood<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return noNeighborhood(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noNeighborhood != null) {
      return noNeighborhood(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return noNeighborhood(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noNeighborhood != null) {
      return noNeighborhood(this);
    }
    return orElse();
  }
}

abstract class NoNeighborhood<T> implements ValueFailure<T> {
  const factory NoNeighborhood({@required T failedValue}) = _$NoNeighborhood<T>;

  @override
  T get failedValue;
  @override
  $NoNeighborhoodCopyWith<T, NoNeighborhood<T>> get copyWith;
}

abstract class $NoRelationCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NoRelationCopyWith(
          NoRelation<T> value, $Res Function(NoRelation<T>) then) =
      _$NoRelationCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$NoRelationCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NoRelationCopyWith<T, $Res> {
  _$NoRelationCopyWithImpl(
      NoRelation<T> _value, $Res Function(NoRelation<T>) _then)
      : super(_value, (v) => _then(v as NoRelation<T>));

  @override
  NoRelation<T> get _value => super._value as NoRelation<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NoRelation<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NoRelation<T> implements NoRelation<T> {
  const _$NoRelation({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.noRelation(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoRelation<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NoRelationCopyWith<T, NoRelation<T>> get copyWith =>
      _$NoRelationCopyWithImpl<T, NoRelation<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result noBirthDate(T failedValue),
    @required Result noNeighborhood(T failedValue),
    @required Result noRelation(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return noRelation(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result noBirthDate(T failedValue),
    Result noNeighborhood(T failedValue),
    Result noRelation(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noRelation != null) {
      return noRelation(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result noBirthDate(NoBirthDate<T> value),
    @required Result noNeighborhood(NoNeighborhood<T> value),
    @required Result noRelation(NoRelation<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(noBirthDate != null);
    assert(noNeighborhood != null);
    assert(noRelation != null);
    return noRelation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result noBirthDate(NoBirthDate<T> value),
    Result noNeighborhood(NoNeighborhood<T> value),
    Result noRelation(NoRelation<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noRelation != null) {
      return noRelation(this);
    }
    return orElse();
  }
}

abstract class NoRelation<T> implements ValueFailure<T> {
  const factory NoRelation({@required T failedValue}) = _$NoRelation<T>;

  @override
  T get failedValue;
  @override
  $NoRelationCopyWith<T, NoRelation<T>> get copyWith;
}
