// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'patient_registration_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
