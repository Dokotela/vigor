// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'patient_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PatientRegistrationEventTearOff {
  const _$PatientRegistrationEventTearOff();

// ignore: unused_element
  RegisterPressed registerPressed() {
    return const RegisterPressed();
  }

// ignore: unused_element
  UpdatePressed updatePressed() {
    return const UpdatePressed();
  }
}

// ignore: unused_element
const $PatientRegistrationEvent = _$PatientRegistrationEventTearOff();

mixin _$PatientRegistrationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerPressed(),
    @required Result updatePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerPressed(),
    Result updatePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerPressed(RegisterPressed value),
    @required Result updatePressed(UpdatePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerPressed(RegisterPressed value),
    Result updatePressed(UpdatePressed value),
    @required Result orElse(),
  });
}

abstract class $PatientRegistrationEventCopyWith<$Res> {
  factory $PatientRegistrationEventCopyWith(PatientRegistrationEvent value,
          $Res Function(PatientRegistrationEvent) then) =
      _$PatientRegistrationEventCopyWithImpl<$Res>;
}

class _$PatientRegistrationEventCopyWithImpl<$Res>
    implements $PatientRegistrationEventCopyWith<$Res> {
  _$PatientRegistrationEventCopyWithImpl(this._value, this._then);

  final PatientRegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(PatientRegistrationEvent) _then;
}

abstract class $RegisterPressedCopyWith<$Res> {
  factory $RegisterPressedCopyWith(
          RegisterPressed value, $Res Function(RegisterPressed) then) =
      _$RegisterPressedCopyWithImpl<$Res>;
}

class _$RegisterPressedCopyWithImpl<$Res>
    extends _$PatientRegistrationEventCopyWithImpl<$Res>
    implements $RegisterPressedCopyWith<$Res> {
  _$RegisterPressedCopyWithImpl(
      RegisterPressed _value, $Res Function(RegisterPressed) _then)
      : super(_value, (v) => _then(v as RegisterPressed));

  @override
  RegisterPressed get _value => super._value as RegisterPressed;
}

class _$RegisterPressed implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString() {
    return 'PatientRegistrationEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerPressed(),
    @required Result updatePressed(),
  }) {
    assert(registerPressed != null);
    assert(updatePressed != null);
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerPressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerPressed(RegisterPressed value),
    @required Result updatePressed(UpdatePressed value),
  }) {
    assert(registerPressed != null);
    assert(updatePressed != null);
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerPressed(RegisterPressed value),
    Result updatePressed(UpdatePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements PatientRegistrationEvent {
  const factory RegisterPressed() = _$RegisterPressed;
}

abstract class $UpdatePressedCopyWith<$Res> {
  factory $UpdatePressedCopyWith(
          UpdatePressed value, $Res Function(UpdatePressed) then) =
      _$UpdatePressedCopyWithImpl<$Res>;
}

class _$UpdatePressedCopyWithImpl<$Res>
    extends _$PatientRegistrationEventCopyWithImpl<$Res>
    implements $UpdatePressedCopyWith<$Res> {
  _$UpdatePressedCopyWithImpl(
      UpdatePressed _value, $Res Function(UpdatePressed) _then)
      : super(_value, (v) => _then(v as UpdatePressed));

  @override
  UpdatePressed get _value => super._value as UpdatePressed;
}

class _$UpdatePressed implements UpdatePressed {
  const _$UpdatePressed();

  @override
  String toString() {
    return 'PatientRegistrationEvent.updatePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdatePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerPressed(),
    @required Result updatePressed(),
  }) {
    assert(registerPressed != null);
    assert(updatePressed != null);
    return updatePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerPressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePressed != null) {
      return updatePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerPressed(RegisterPressed value),
    @required Result updatePressed(UpdatePressed value),
  }) {
    assert(registerPressed != null);
    assert(updatePressed != null);
    return updatePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerPressed(RegisterPressed value),
    Result updatePressed(UpdatePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePressed != null) {
      return updatePressed(this);
    }
    return orElse();
  }
}

abstract class UpdatePressed implements PatientRegistrationEvent {
  const factory UpdatePressed() = _$UpdatePressed;
}

class _$PatientRegistrationStateTearOff {
  const _$PatientRegistrationStateTearOff();

// ignore: unused_element
  _RegisterPatient call(
      {Patient patient,
      @required
          RegistrationName family,
      @required
          RegistrationName given,
      @required
          RegistrationGender gender,
      @required
          RegistrationBirthDate birthDate,
      @required
          RegistrationBarrio barrio,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<RegistrationFailure, Unit>>
              registrationFailureOrSuccessOption}) {
    return _RegisterPatient(
      patient: patient,
      family: family,
      given: given,
      gender: gender,
      birthDate: birthDate,
      barrio: barrio,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      registrationFailureOrSuccessOption: registrationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $PatientRegistrationState = _$PatientRegistrationStateTearOff();

mixin _$PatientRegistrationState {
  Patient get patient;
  RegistrationName get family;
  RegistrationName get given;
  RegistrationGender get gender;
  RegistrationBirthDate get birthDate;
  RegistrationBarrio get barrio;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<RegistrationFailure, Unit>>
      get registrationFailureOrSuccessOption;

  $PatientRegistrationStateCopyWith<PatientRegistrationState> get copyWith;
}

abstract class $PatientRegistrationStateCopyWith<$Res> {
  factory $PatientRegistrationStateCopyWith(PatientRegistrationState value,
          $Res Function(PatientRegistrationState) then) =
      _$PatientRegistrationStateCopyWithImpl<$Res>;
  $Res call(
      {Patient patient,
      RegistrationName family,
      RegistrationName given,
      RegistrationGender gender,
      RegistrationBirthDate birthDate,
      RegistrationBarrio barrio,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<RegistrationFailure, Unit>>
          registrationFailureOrSuccessOption});

  $PatientCopyWith<$Res> get patient;
}

class _$PatientRegistrationStateCopyWithImpl<$Res>
    implements $PatientRegistrationStateCopyWith<$Res> {
  _$PatientRegistrationStateCopyWithImpl(this._value, this._then);

  final PatientRegistrationState _value;
  // ignore: unused_field
  final $Res Function(PatientRegistrationState) _then;

  @override
  $Res call({
    Object patient = freezed,
    Object family = freezed,
    Object given = freezed,
    Object gender = freezed,
    Object birthDate = freezed,
    Object barrio = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object registrationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      patient: patient == freezed ? _value.patient : patient as Patient,
      family: family == freezed ? _value.family : family as RegistrationName,
      given: given == freezed ? _value.given : given as RegistrationName,
      gender: gender == freezed ? _value.gender : gender as RegistrationGender,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate as RegistrationBirthDate,
      barrio: barrio == freezed ? _value.barrio : barrio as RegistrationBarrio,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      registrationFailureOrSuccessOption:
          registrationFailureOrSuccessOption == freezed
              ? _value.registrationFailureOrSuccessOption
              : registrationFailureOrSuccessOption
                  as Option<Either<RegistrationFailure, Unit>>,
    ));
  }

  @override
  $PatientCopyWith<$Res> get patient {
    if (_value.patient == null) {
      return null;
    }
    return $PatientCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value));
    });
  }
}

abstract class _$RegisterPatientCopyWith<$Res>
    implements $PatientRegistrationStateCopyWith<$Res> {
  factory _$RegisterPatientCopyWith(
          _RegisterPatient value, $Res Function(_RegisterPatient) then) =
      __$RegisterPatientCopyWithImpl<$Res>;
  @override
  $Res call(
      {Patient patient,
      RegistrationName family,
      RegistrationName given,
      RegistrationGender gender,
      RegistrationBirthDate birthDate,
      RegistrationBarrio barrio,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<RegistrationFailure, Unit>>
          registrationFailureOrSuccessOption});

  @override
  $PatientCopyWith<$Res> get patient;
}

class __$RegisterPatientCopyWithImpl<$Res>
    extends _$PatientRegistrationStateCopyWithImpl<$Res>
    implements _$RegisterPatientCopyWith<$Res> {
  __$RegisterPatientCopyWithImpl(
      _RegisterPatient _value, $Res Function(_RegisterPatient) _then)
      : super(_value, (v) => _then(v as _RegisterPatient));

  @override
  _RegisterPatient get _value => super._value as _RegisterPatient;

  @override
  $Res call({
    Object patient = freezed,
    Object family = freezed,
    Object given = freezed,
    Object gender = freezed,
    Object birthDate = freezed,
    Object barrio = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object registrationFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterPatient(
      patient: patient == freezed ? _value.patient : patient as Patient,
      family: family == freezed ? _value.family : family as RegistrationName,
      given: given == freezed ? _value.given : given as RegistrationName,
      gender: gender == freezed ? _value.gender : gender as RegistrationGender,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate as RegistrationBirthDate,
      barrio: barrio == freezed ? _value.barrio : barrio as RegistrationBarrio,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      registrationFailureOrSuccessOption:
          registrationFailureOrSuccessOption == freezed
              ? _value.registrationFailureOrSuccessOption
              : registrationFailureOrSuccessOption
                  as Option<Either<RegistrationFailure, Unit>>,
    ));
  }
}

class _$_RegisterPatient implements _RegisterPatient {
  const _$_RegisterPatient(
      {this.patient,
      @required this.family,
      @required this.given,
      @required this.gender,
      @required this.birthDate,
      @required this.barrio,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.registrationFailureOrSuccessOption})
      : assert(family != null),
        assert(given != null),
        assert(gender != null),
        assert(birthDate != null),
        assert(barrio != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(registrationFailureOrSuccessOption != null);

  @override
  final Patient patient;
  @override
  final RegistrationName family;
  @override
  final RegistrationName given;
  @override
  final RegistrationGender gender;
  @override
  final RegistrationBirthDate birthDate;
  @override
  final RegistrationBarrio barrio;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<RegistrationFailure, Unit>>
      registrationFailureOrSuccessOption;

  @override
  String toString() {
    return 'PatientRegistrationState(patient: $patient, family: $family, given: $given, gender: $gender, birthDate: $birthDate, barrio: $barrio, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, registrationFailureOrSuccessOption: $registrationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterPatient &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.family, family) ||
                const DeepCollectionEquality().equals(other.family, family)) &&
            (identical(other.given, given) ||
                const DeepCollectionEquality().equals(other.given, given)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.barrio, barrio) ||
                const DeepCollectionEquality().equals(other.barrio, barrio)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.registrationFailureOrSuccessOption,
                    registrationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.registrationFailureOrSuccessOption,
                    registrationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(family) ^
      const DeepCollectionEquality().hash(given) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(barrio) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(registrationFailureOrSuccessOption);

  @override
  _$RegisterPatientCopyWith<_RegisterPatient> get copyWith =>
      __$RegisterPatientCopyWithImpl<_RegisterPatient>(this, _$identity);
}

abstract class _RegisterPatient implements PatientRegistrationState {
  const factory _RegisterPatient(
      {Patient patient,
      @required
          RegistrationName family,
      @required
          RegistrationName given,
      @required
          RegistrationGender gender,
      @required
          RegistrationBirthDate birthDate,
      @required
          RegistrationBarrio barrio,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<RegistrationFailure, Unit>>
              registrationFailureOrSuccessOption}) = _$_RegisterPatient;

  @override
  Patient get patient;
  @override
  RegistrationName get family;
  @override
  RegistrationName get given;
  @override
  RegistrationGender get gender;
  @override
  RegistrationBirthDate get birthDate;
  @override
  RegistrationBarrio get barrio;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<RegistrationFailure, Unit>>
      get registrationFailureOrSuccessOption;
  @override
  _$RegisterPatientCopyWith<_RegisterPatient> get copyWith;
}
