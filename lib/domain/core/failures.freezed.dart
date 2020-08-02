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
  NotAGender<T> notAGender<T>({@required T failedValue}) {
    return NotAGender<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NotABarrio<T> notABarrio<T>({@required T failedValue}) {
    return NotABarrio<T>(
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
    @required Result notAGender(T failedValue),
    @required Result notABarrio(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result notAGender(T failedValue),
    Result notABarrio(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result notAGender(NotAGender<T> value),
    @required Result notABarrio(NotABarrio<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result notAGender(NotAGender<T> value),
    Result notABarrio(NotABarrio<T> value),
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
    @required Result notAGender(T failedValue),
    @required Result notABarrio(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result notAGender(T failedValue),
    Result notABarrio(T failedValue),
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
    @required Result notAGender(NotAGender<T> value),
    @required Result notABarrio(NotABarrio<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result notAGender(NotAGender<T> value),
    Result notABarrio(NotABarrio<T> value),
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
    @required Result notAGender(T failedValue),
    @required Result notABarrio(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result notAGender(T failedValue),
    Result notABarrio(T failedValue),
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
    @required Result notAGender(NotAGender<T> value),
    @required Result notABarrio(NotABarrio<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result notAGender(NotAGender<T> value),
    Result notABarrio(NotABarrio<T> value),
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
    @required Result notAGender(T failedValue),
    @required Result notABarrio(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return shortRegistrationName(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result notAGender(T failedValue),
    Result notABarrio(T failedValue),
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
    @required Result notAGender(NotAGender<T> value),
    @required Result notABarrio(NotABarrio<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return shortRegistrationName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result notAGender(NotAGender<T> value),
    Result notABarrio(NotABarrio<T> value),
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

abstract class $NotAGenderCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NotAGenderCopyWith(
          NotAGender<T> value, $Res Function(NotAGender<T>) then) =
      _$NotAGenderCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$NotAGenderCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotAGenderCopyWith<T, $Res> {
  _$NotAGenderCopyWithImpl(
      NotAGender<T> _value, $Res Function(NotAGender<T>) _then)
      : super(_value, (v) => _then(v as NotAGender<T>));

  @override
  NotAGender<T> get _value => super._value as NotAGender<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NotAGender<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NotAGender<T> implements NotAGender<T> {
  const _$NotAGender({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notAGender(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotAGender<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NotAGenderCopyWith<T, NotAGender<T>> get copyWith =>
      _$NotAGenderCopyWithImpl<T, NotAGender<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result notAGender(T failedValue),
    @required Result notABarrio(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return notAGender(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result notAGender(T failedValue),
    Result notABarrio(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAGender != null) {
      return notAGender(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result notAGender(NotAGender<T> value),
    @required Result notABarrio(NotABarrio<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return notAGender(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result notAGender(NotAGender<T> value),
    Result notABarrio(NotABarrio<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAGender != null) {
      return notAGender(this);
    }
    return orElse();
  }
}

abstract class NotAGender<T> implements ValueFailure<T> {
  const factory NotAGender({@required T failedValue}) = _$NotAGender<T>;

  @override
  T get failedValue;
  @override
  $NotAGenderCopyWith<T, NotAGender<T>> get copyWith;
}

abstract class $NotABarrioCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NotABarrioCopyWith(
          NotABarrio<T> value, $Res Function(NotABarrio<T>) then) =
      _$NotABarrioCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$NotABarrioCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotABarrioCopyWith<T, $Res> {
  _$NotABarrioCopyWithImpl(
      NotABarrio<T> _value, $Res Function(NotABarrio<T>) _then)
      : super(_value, (v) => _then(v as NotABarrio<T>));

  @override
  NotABarrio<T> get _value => super._value as NotABarrio<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NotABarrio<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NotABarrio<T> implements NotABarrio<T> {
  const _$NotABarrio({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notABarrio(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotABarrio<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NotABarrioCopyWith<T, NotABarrio<T>> get copyWith =>
      _$NotABarrioCopyWithImpl<T, NotABarrio<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidUsername(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result shortRegistrationName(T failedValue),
    @required Result notAGender(T failedValue),
    @required Result notABarrio(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return notABarrio(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidUsername(T failedValue),
    Result shortPassword(T failedValue),
    Result shortRegistrationName(T failedValue),
    Result notAGender(T failedValue),
    Result notABarrio(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notABarrio != null) {
      return notABarrio(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result shortRegistrationName(ShortRegistrationName<T> value),
    @required Result notAGender(NotAGender<T> value),
    @required Result notABarrio(NotABarrio<T> value),
  }) {
    assert(invalidUsername != null);
    assert(shortPassword != null);
    assert(shortRegistrationName != null);
    assert(notAGender != null);
    assert(notABarrio != null);
    return notABarrio(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidUsername(InvalidUsername<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result shortRegistrationName(ShortRegistrationName<T> value),
    Result notAGender(NotAGender<T> value),
    Result notABarrio(NotABarrio<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notABarrio != null) {
      return notABarrio(this);
    }
    return orElse();
  }
}

abstract class NotABarrio<T> implements ValueFailure<T> {
  const factory NotABarrio({@required T failedValue}) = _$NotABarrio<T>;

  @override
  T get failedValue;
  @override
  $NotABarrioCopyWith<T, NotABarrio<T>> get copyWith;
}
