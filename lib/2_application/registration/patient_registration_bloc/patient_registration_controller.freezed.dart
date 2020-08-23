// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'patient_registration_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PatientRegistrationEventTearOff {
  const _$PatientRegistrationEventTearOff();

// ignore: unused_element
  _Gender gender(String gender) {
    return _Gender(
      gender,
    );
  }

// ignore: unused_element
  _BirthDate birthDate(DateTime birthDate) {
    return _BirthDate(
      birthDate,
    );
  }

// ignore: unused_element
  _Barrio barrio(String barrio) {
    return _Barrio(
      barrio,
    );
  }

// ignore: unused_element
  _Register register() {
    return const _Register();
  }
}

// ignore: unused_element
const $PatientRegistrationEvent = _$PatientRegistrationEventTearOff();

mixin _$PatientRegistrationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gender(String gender),
    @required Result birthDate(DateTime birthDate),
    @required Result barrio(String barrio),
    @required Result register(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gender(String gender),
    Result birthDate(DateTime birthDate),
    Result barrio(String barrio),
    Result register(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gender(_Gender value),
    @required Result birthDate(_BirthDate value),
    @required Result barrio(_Barrio value),
    @required Result register(_Register value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gender(_Gender value),
    Result birthDate(_BirthDate value),
    Result barrio(_Barrio value),
    Result register(_Register value),
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

abstract class _$GenderCopyWith<$Res> {
  factory _$GenderCopyWith(_Gender value, $Res Function(_Gender) then) =
      __$GenderCopyWithImpl<$Res>;
  $Res call({String gender});
}

class __$GenderCopyWithImpl<$Res>
    extends _$PatientRegistrationEventCopyWithImpl<$Res>
    implements _$GenderCopyWith<$Res> {
  __$GenderCopyWithImpl(_Gender _value, $Res Function(_Gender) _then)
      : super(_value, (v) => _then(v as _Gender));

  @override
  _Gender get _value => super._value as _Gender;

  @override
  $Res call({
    Object gender = freezed,
  }) {
    return _then(_Gender(
      gender == freezed ? _value.gender : gender as String,
    ));
  }
}

class _$_Gender implements _Gender {
  const _$_Gender(this.gender) : assert(gender != null);

  @override
  final String gender;

  @override
  String toString() {
    return 'PatientRegistrationEvent.gender(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gender &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @override
  _$GenderCopyWith<_Gender> get copyWith =>
      __$GenderCopyWithImpl<_Gender>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gender(String gender),
    @required Result birthDate(DateTime birthDate),
    @required Result barrio(String barrio),
    @required Result register(),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return gender(this.gender);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gender(String gender),
    Result birthDate(DateTime birthDate),
    Result barrio(String barrio),
    Result register(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gender != null) {
      return gender(this.gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gender(_Gender value),
    @required Result birthDate(_BirthDate value),
    @required Result barrio(_Barrio value),
    @required Result register(_Register value),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return gender(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gender(_Gender value),
    Result birthDate(_BirthDate value),
    Result barrio(_Barrio value),
    Result register(_Register value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gender != null) {
      return gender(this);
    }
    return orElse();
  }
}

abstract class _Gender implements PatientRegistrationEvent {
  const factory _Gender(String gender) = _$_Gender;

  String get gender;
  _$GenderCopyWith<_Gender> get copyWith;
}

abstract class _$BirthDateCopyWith<$Res> {
  factory _$BirthDateCopyWith(
          _BirthDate value, $Res Function(_BirthDate) then) =
      __$BirthDateCopyWithImpl<$Res>;
  $Res call({DateTime birthDate});
}

class __$BirthDateCopyWithImpl<$Res>
    extends _$PatientRegistrationEventCopyWithImpl<$Res>
    implements _$BirthDateCopyWith<$Res> {
  __$BirthDateCopyWithImpl(_BirthDate _value, $Res Function(_BirthDate) _then)
      : super(_value, (v) => _then(v as _BirthDate));

  @override
  _BirthDate get _value => super._value as _BirthDate;

  @override
  $Res call({
    Object birthDate = freezed,
  }) {
    return _then(_BirthDate(
      birthDate == freezed ? _value.birthDate : birthDate as DateTime,
    ));
  }
}

class _$_BirthDate implements _BirthDate {
  const _$_BirthDate(this.birthDate) : assert(birthDate != null);

  @override
  final DateTime birthDate;

  @override
  String toString() {
    return 'PatientRegistrationEvent.birthDate(birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BirthDate &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(birthDate);

  @override
  _$BirthDateCopyWith<_BirthDate> get copyWith =>
      __$BirthDateCopyWithImpl<_BirthDate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gender(String gender),
    @required Result birthDate(DateTime birthDate),
    @required Result barrio(String barrio),
    @required Result register(),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return birthDate(this.birthDate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gender(String gender),
    Result birthDate(DateTime birthDate),
    Result barrio(String barrio),
    Result register(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (birthDate != null) {
      return birthDate(this.birthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gender(_Gender value),
    @required Result birthDate(_BirthDate value),
    @required Result barrio(_Barrio value),
    @required Result register(_Register value),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return birthDate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gender(_Gender value),
    Result birthDate(_BirthDate value),
    Result barrio(_Barrio value),
    Result register(_Register value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (birthDate != null) {
      return birthDate(this);
    }
    return orElse();
  }
}

abstract class _BirthDate implements PatientRegistrationEvent {
  const factory _BirthDate(DateTime birthDate) = _$_BirthDate;

  DateTime get birthDate;
  _$BirthDateCopyWith<_BirthDate> get copyWith;
}

abstract class _$BarrioCopyWith<$Res> {
  factory _$BarrioCopyWith(_Barrio value, $Res Function(_Barrio) then) =
      __$BarrioCopyWithImpl<$Res>;
  $Res call({String barrio});
}

class __$BarrioCopyWithImpl<$Res>
    extends _$PatientRegistrationEventCopyWithImpl<$Res>
    implements _$BarrioCopyWith<$Res> {
  __$BarrioCopyWithImpl(_Barrio _value, $Res Function(_Barrio) _then)
      : super(_value, (v) => _then(v as _Barrio));

  @override
  _Barrio get _value => super._value as _Barrio;

  @override
  $Res call({
    Object barrio = freezed,
  }) {
    return _then(_Barrio(
      barrio == freezed ? _value.barrio : barrio as String,
    ));
  }
}

class _$_Barrio implements _Barrio {
  const _$_Barrio(this.barrio) : assert(barrio != null);

  @override
  final String barrio;

  @override
  String toString() {
    return 'PatientRegistrationEvent.barrio(barrio: $barrio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Barrio &&
            (identical(other.barrio, barrio) ||
                const DeepCollectionEquality().equals(other.barrio, barrio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barrio);

  @override
  _$BarrioCopyWith<_Barrio> get copyWith =>
      __$BarrioCopyWithImpl<_Barrio>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gender(String gender),
    @required Result birthDate(DateTime birthDate),
    @required Result barrio(String barrio),
    @required Result register(),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return barrio(this.barrio);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gender(String gender),
    Result birthDate(DateTime birthDate),
    Result barrio(String barrio),
    Result register(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (barrio != null) {
      return barrio(this.barrio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gender(_Gender value),
    @required Result birthDate(_BirthDate value),
    @required Result barrio(_Barrio value),
    @required Result register(_Register value),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return barrio(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gender(_Gender value),
    Result birthDate(_BirthDate value),
    Result barrio(_Barrio value),
    Result register(_Register value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (barrio != null) {
      return barrio(this);
    }
    return orElse();
  }
}

abstract class _Barrio implements PatientRegistrationEvent {
  const factory _Barrio(String barrio) = _$_Barrio;

  String get barrio;
  _$BarrioCopyWith<_Barrio> get copyWith;
}

abstract class _$RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
}

class __$RegisterCopyWithImpl<$Res>
    extends _$PatientRegistrationEventCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;
}

class _$_Register implements _Register {
  const _$_Register();

  @override
  String toString() {
    return 'PatientRegistrationEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gender(String gender),
    @required Result birthDate(DateTime birthDate),
    @required Result barrio(String barrio),
    @required Result register(),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return register();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gender(String gender),
    Result birthDate(DateTime birthDate),
    Result barrio(String barrio),
    Result register(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gender(_Gender value),
    @required Result birthDate(_BirthDate value),
    @required Result barrio(_Barrio value),
    @required Result register(_Register value),
  }) {
    assert(gender != null);
    assert(birthDate != null);
    assert(barrio != null);
    assert(register != null);
    return register(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gender(_Gender value),
    Result birthDate(_BirthDate value),
    Result barrio(_Barrio value),
    Result register(_Register value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements PatientRegistrationEvent {
  const factory _Register() = _$_Register;
}

class _$PatientRegistrationStateTearOff {
  const _$PatientRegistrationStateTearOff();

// ignore: unused_element
  _PatientRegistrationState call(
      {String familyNameError,
      String givenNameError,
      String gender,
      DateTime birthDate,
      String birthDateError,
      String barrio,
      String barrioError,
      Patient patient,
      List<String> barriosList}) {
    return _PatientRegistrationState(
      familyNameError: familyNameError,
      givenNameError: givenNameError,
      gender: gender,
      birthDate: birthDate,
      birthDateError: birthDateError,
      barrio: barrio,
      barrioError: barrioError,
      patient: patient,
      barriosList: barriosList,
    );
  }
}

// ignore: unused_element
const $PatientRegistrationState = _$PatientRegistrationStateTearOff();

mixin _$PatientRegistrationState {
  String get familyNameError;
  String get givenNameError;
  String get gender;
  DateTime get birthDate;
  String get birthDateError;
  String get barrio;
  String get barrioError;
  Patient get patient;
  List<String> get barriosList;

  $PatientRegistrationStateCopyWith<PatientRegistrationState> get copyWith;
}

abstract class $PatientRegistrationStateCopyWith<$Res> {
  factory $PatientRegistrationStateCopyWith(PatientRegistrationState value,
          $Res Function(PatientRegistrationState) then) =
      _$PatientRegistrationStateCopyWithImpl<$Res>;
  $Res call(
      {String familyNameError,
      String givenNameError,
      String gender,
      DateTime birthDate,
      String birthDateError,
      String barrio,
      String barrioError,
      Patient patient,
      List<String> barriosList});

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
    Object familyNameError = freezed,
    Object givenNameError = freezed,
    Object gender = freezed,
    Object birthDate = freezed,
    Object birthDateError = freezed,
    Object barrio = freezed,
    Object barrioError = freezed,
    Object patient = freezed,
    Object barriosList = freezed,
  }) {
    return _then(_value.copyWith(
      familyNameError: familyNameError == freezed
          ? _value.familyNameError
          : familyNameError as String,
      givenNameError: givenNameError == freezed
          ? _value.givenNameError
          : givenNameError as String,
      gender: gender == freezed ? _value.gender : gender as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      birthDateError: birthDateError == freezed
          ? _value.birthDateError
          : birthDateError as String,
      barrio: barrio == freezed ? _value.barrio : barrio as String,
      barrioError:
          barrioError == freezed ? _value.barrioError : barrioError as String,
      patient: patient == freezed ? _value.patient : patient as Patient,
      barriosList: barriosList == freezed
          ? _value.barriosList
          : barriosList as List<String>,
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

abstract class _$PatientRegistrationStateCopyWith<$Res>
    implements $PatientRegistrationStateCopyWith<$Res> {
  factory _$PatientRegistrationStateCopyWith(_PatientRegistrationState value,
          $Res Function(_PatientRegistrationState) then) =
      __$PatientRegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String familyNameError,
      String givenNameError,
      String gender,
      DateTime birthDate,
      String birthDateError,
      String barrio,
      String barrioError,
      Patient patient,
      List<String> barriosList});

  @override
  $PatientCopyWith<$Res> get patient;
}

class __$PatientRegistrationStateCopyWithImpl<$Res>
    extends _$PatientRegistrationStateCopyWithImpl<$Res>
    implements _$PatientRegistrationStateCopyWith<$Res> {
  __$PatientRegistrationStateCopyWithImpl(_PatientRegistrationState _value,
      $Res Function(_PatientRegistrationState) _then)
      : super(_value, (v) => _then(v as _PatientRegistrationState));

  @override
  _PatientRegistrationState get _value =>
      super._value as _PatientRegistrationState;

  @override
  $Res call({
    Object familyNameError = freezed,
    Object givenNameError = freezed,
    Object gender = freezed,
    Object birthDate = freezed,
    Object birthDateError = freezed,
    Object barrio = freezed,
    Object barrioError = freezed,
    Object patient = freezed,
    Object barriosList = freezed,
  }) {
    return _then(_PatientRegistrationState(
      familyNameError: familyNameError == freezed
          ? _value.familyNameError
          : familyNameError as String,
      givenNameError: givenNameError == freezed
          ? _value.givenNameError
          : givenNameError as String,
      gender: gender == freezed ? _value.gender : gender as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      birthDateError: birthDateError == freezed
          ? _value.birthDateError
          : birthDateError as String,
      barrio: barrio == freezed ? _value.barrio : barrio as String,
      barrioError:
          barrioError == freezed ? _value.barrioError : barrioError as String,
      patient: patient == freezed ? _value.patient : patient as Patient,
      barriosList: barriosList == freezed
          ? _value.barriosList
          : barriosList as List<String>,
    ));
  }
}

class _$_PatientRegistrationState implements _PatientRegistrationState {
  const _$_PatientRegistrationState(
      {this.familyNameError,
      this.givenNameError,
      this.gender,
      this.birthDate,
      this.birthDateError,
      this.barrio,
      this.barrioError,
      this.patient,
      this.barriosList});

  @override
  final String familyNameError;
  @override
  final String givenNameError;
  @override
  final String gender;
  @override
  final DateTime birthDate;
  @override
  final String birthDateError;
  @override
  final String barrio;
  @override
  final String barrioError;
  @override
  final Patient patient;
  @override
  final List<String> barriosList;

  @override
  String toString() {
    return 'PatientRegistrationState(familyNameError: $familyNameError, givenNameError: $givenNameError, gender: $gender, birthDate: $birthDate, birthDateError: $birthDateError, barrio: $barrio, barrioError: $barrioError, patient: $patient, barriosList: $barriosList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientRegistrationState &&
            (identical(other.familyNameError, familyNameError) ||
                const DeepCollectionEquality()
                    .equals(other.familyNameError, familyNameError)) &&
            (identical(other.givenNameError, givenNameError) ||
                const DeepCollectionEquality()
                    .equals(other.givenNameError, givenNameError)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.birthDateError, birthDateError) ||
                const DeepCollectionEquality()
                    .equals(other.birthDateError, birthDateError)) &&
            (identical(other.barrio, barrio) ||
                const DeepCollectionEquality().equals(other.barrio, barrio)) &&
            (identical(other.barrioError, barrioError) ||
                const DeepCollectionEquality()
                    .equals(other.barrioError, barrioError)) &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.barriosList, barriosList) ||
                const DeepCollectionEquality()
                    .equals(other.barriosList, barriosList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(familyNameError) ^
      const DeepCollectionEquality().hash(givenNameError) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(birthDateError) ^
      const DeepCollectionEquality().hash(barrio) ^
      const DeepCollectionEquality().hash(barrioError) ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(barriosList);

  @override
  _$PatientRegistrationStateCopyWith<_PatientRegistrationState> get copyWith =>
      __$PatientRegistrationStateCopyWithImpl<_PatientRegistrationState>(
          this, _$identity);
}

abstract class _PatientRegistrationState implements PatientRegistrationState {
  const factory _PatientRegistrationState(
      {String familyNameError,
      String givenNameError,
      String gender,
      DateTime birthDate,
      String birthDateError,
      String barrio,
      String barrioError,
      Patient patient,
      List<String> barriosList}) = _$_PatientRegistrationState;

  @override
  String get familyNameError;
  @override
  String get givenNameError;
  @override
  String get gender;
  @override
  DateTime get birthDate;
  @override
  String get birthDateError;
  @override
  String get barrio;
  @override
  String get barrioError;
  @override
  Patient get patient;
  @override
  List<String> get barriosList;
  @override
  _$PatientRegistrationStateCopyWith<_PatientRegistrationState> get copyWith;
}
