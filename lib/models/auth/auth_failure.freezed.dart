// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  InvalidUsernameAndPasswordCombination
      invalidUsernameAndPasswordCombination() {
    return const InvalidUsernameAndPasswordCombination();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result invalidUsernameAndPasswordCombination(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result invalidUsernameAndPasswordCombination(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required
        Result invalidUsernameAndPasswordCombination(
            InvalidUsernameAndPasswordCombination value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result invalidUsernameAndPasswordCombination(
        InvalidUsernameAndPasswordCombination value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result invalidUsernameAndPasswordCombination(),
  }) {
    assert(serverError != null);
    assert(invalidUsernameAndPasswordCombination != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result invalidUsernameAndPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required
        Result invalidUsernameAndPasswordCombination(
            InvalidUsernameAndPasswordCombination value),
  }) {
    assert(serverError != null);
    assert(invalidUsernameAndPasswordCombination != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result invalidUsernameAndPasswordCombination(
        InvalidUsernameAndPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $InvalidUsernameAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidUsernameAndPasswordCombinationCopyWith(
          InvalidUsernameAndPasswordCombination value,
          $Res Function(InvalidUsernameAndPasswordCombination) then) =
      _$InvalidUsernameAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$InvalidUsernameAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidUsernameAndPasswordCombinationCopyWith<$Res> {
  _$InvalidUsernameAndPasswordCombinationCopyWithImpl(
      InvalidUsernameAndPasswordCombination _value,
      $Res Function(InvalidUsernameAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidUsernameAndPasswordCombination));

  @override
  InvalidUsernameAndPasswordCombination get _value =>
      super._value as InvalidUsernameAndPasswordCombination;
}

class _$InvalidUsernameAndPasswordCombination
    implements InvalidUsernameAndPasswordCombination {
  const _$InvalidUsernameAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidUsernameAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsernameAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result invalidUsernameAndPasswordCombination(),
  }) {
    assert(serverError != null);
    assert(invalidUsernameAndPasswordCombination != null);
    return invalidUsernameAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result invalidUsernameAndPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsernameAndPasswordCombination != null) {
      return invalidUsernameAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required
        Result invalidUsernameAndPasswordCombination(
            InvalidUsernameAndPasswordCombination value),
  }) {
    assert(serverError != null);
    assert(invalidUsernameAndPasswordCombination != null);
    return invalidUsernameAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result invalidUsernameAndPasswordCombination(
        InvalidUsernameAndPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsernameAndPasswordCombination != null) {
      return invalidUsernameAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidUsernameAndPasswordCombination implements AuthFailure {
  const factory InvalidUsernameAndPasswordCombination() =
      _$InvalidUsernameAndPasswordCombination;
}
