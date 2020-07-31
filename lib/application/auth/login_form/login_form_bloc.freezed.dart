// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginFormEventTearOff {
  const _$LoginFormEventTearOff();

// ignore: unused_element
  LoginWithUsernameAndPasswordPressed signInWithUsernameAndPasswordPressed() {
    return const LoginWithUsernameAndPasswordPressed();
  }
}

// ignore: unused_element
const $LoginFormEvent = _$LoginFormEventTearOff();

mixin _$LoginFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithUsernameAndPasswordPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithUsernameAndPasswordPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signInWithUsernameAndPasswordPressed(
            LoginWithUsernameAndPasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithUsernameAndPasswordPressed(
        LoginWithUsernameAndPasswordPressed value),
    @required Result orElse(),
  });
}

abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res>;
}

class _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  final LoginFormEvent _value;
  // ignore: unused_field
  final $Res Function(LoginFormEvent) _then;
}

abstract class $LoginWithUsernameAndPasswordPressedCopyWith<$Res> {
  factory $LoginWithUsernameAndPasswordPressedCopyWith(
          LoginWithUsernameAndPasswordPressed value,
          $Res Function(LoginWithUsernameAndPasswordPressed) then) =
      _$LoginWithUsernameAndPasswordPressedCopyWithImpl<$Res>;
}

class _$LoginWithUsernameAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginWithUsernameAndPasswordPressedCopyWith<$Res> {
  _$LoginWithUsernameAndPasswordPressedCopyWithImpl(
      LoginWithUsernameAndPasswordPressed _value,
      $Res Function(LoginWithUsernameAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as LoginWithUsernameAndPasswordPressed));

  @override
  LoginWithUsernameAndPasswordPressed get _value =>
      super._value as LoginWithUsernameAndPasswordPressed;
}

class _$LoginWithUsernameAndPasswordPressed
    implements LoginWithUsernameAndPasswordPressed {
  const _$LoginWithUsernameAndPasswordPressed();

  @override
  String toString() {
    return 'LoginFormEvent.signInWithUsernameAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithUsernameAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithUsernameAndPasswordPressed(),
  }) {
    assert(signInWithUsernameAndPasswordPressed != null);
    return signInWithUsernameAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithUsernameAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithUsernameAndPasswordPressed != null) {
      return signInWithUsernameAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result signInWithUsernameAndPasswordPressed(
            LoginWithUsernameAndPasswordPressed value),
  }) {
    assert(signInWithUsernameAndPasswordPressed != null);
    return signInWithUsernameAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithUsernameAndPasswordPressed(
        LoginWithUsernameAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithUsernameAndPasswordPressed != null) {
      return signInWithUsernameAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class LoginWithUsernameAndPasswordPressed implements LoginFormEvent {
  const factory LoginWithUsernameAndPasswordPressed() =
      _$LoginWithUsernameAndPasswordPressed;
}

class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

// ignore: unused_element
  _LoginFormState call(
      {@required Username username,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _LoginFormState(
      username: username,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $LoginFormState = _$LoginFormStateTearOff();

mixin _$LoginFormState {
  Username get username;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $LoginFormStateCopyWith<LoginFormState> get copyWith;
}

abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Username,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(
          _LoginFormState value, $Res Function(_LoginFormState) then) =
      __$LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(
      _LoginFormState _value, $Res Function(_LoginFormState) _then)
      : super(_value, (v) => _then(v as _LoginFormState));

  @override
  _LoginFormState get _value => super._value as _LoginFormState;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_LoginFormState(
      username: username == freezed ? _value.username : username as Username,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_LoginFormState implements _LoginFormState {
  const _$_LoginFormState(
      {@required this.username,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(username != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginFormState(username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
          {@required
              Username username,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_LoginFormState;

  @override
  Username get username;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith;
}
