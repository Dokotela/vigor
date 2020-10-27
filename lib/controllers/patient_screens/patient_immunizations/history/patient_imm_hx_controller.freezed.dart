// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'patient_imm_hx_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PatientImmHxStateTearOff {
  const _$PatientImmHxStateTearOff();

// ignore: unused_element
  _PatientImmHxState call(
      {PatientModel patient, List<Immunization> pastImmunizations}) {
    return _PatientImmHxState(
      patient: patient,
      pastImmunizations: pastImmunizations,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PatientImmHxState = _$PatientImmHxStateTearOff();

/// @nodoc
mixin _$PatientImmHxState {
  PatientModel get patient;
  List<Immunization> get pastImmunizations;

  $PatientImmHxStateCopyWith<PatientImmHxState> get copyWith;
}

/// @nodoc
abstract class $PatientImmHxStateCopyWith<$Res> {
  factory $PatientImmHxStateCopyWith(
          PatientImmHxState value, $Res Function(PatientImmHxState) then) =
      _$PatientImmHxStateCopyWithImpl<$Res>;
  $Res call({PatientModel patient, List<Immunization> pastImmunizations});
}

/// @nodoc
class _$PatientImmHxStateCopyWithImpl<$Res>
    implements $PatientImmHxStateCopyWith<$Res> {
  _$PatientImmHxStateCopyWithImpl(this._value, this._then);

  final PatientImmHxState _value;
  // ignore: unused_field
  final $Res Function(PatientImmHxState) _then;

  @override
  $Res call({
    Object patient = freezed,
    Object pastImmunizations = freezed,
  }) {
    return _then(_value.copyWith(
      patient: patient == freezed ? _value.patient : patient as PatientModel,
      pastImmunizations: pastImmunizations == freezed
          ? _value.pastImmunizations
          : pastImmunizations as List<Immunization>,
    ));
  }
}

/// @nodoc
abstract class _$PatientImmHxStateCopyWith<$Res>
    implements $PatientImmHxStateCopyWith<$Res> {
  factory _$PatientImmHxStateCopyWith(
          _PatientImmHxState value, $Res Function(_PatientImmHxState) then) =
      __$PatientImmHxStateCopyWithImpl<$Res>;
  @override
  $Res call({PatientModel patient, List<Immunization> pastImmunizations});
}

/// @nodoc
class __$PatientImmHxStateCopyWithImpl<$Res>
    extends _$PatientImmHxStateCopyWithImpl<$Res>
    implements _$PatientImmHxStateCopyWith<$Res> {
  __$PatientImmHxStateCopyWithImpl(
      _PatientImmHxState _value, $Res Function(_PatientImmHxState) _then)
      : super(_value, (v) => _then(v as _PatientImmHxState));

  @override
  _PatientImmHxState get _value => super._value as _PatientImmHxState;

  @override
  $Res call({
    Object patient = freezed,
    Object pastImmunizations = freezed,
  }) {
    return _then(_PatientImmHxState(
      patient: patient == freezed ? _value.patient : patient as PatientModel,
      pastImmunizations: pastImmunizations == freezed
          ? _value.pastImmunizations
          : pastImmunizations as List<Immunization>,
    ));
  }
}

/// @nodoc
class _$_PatientImmHxState implements _PatientImmHxState {
  const _$_PatientImmHxState({this.patient, this.pastImmunizations});

  @override
  final PatientModel patient;
  @override
  final List<Immunization> pastImmunizations;

  @override
  String toString() {
    return 'PatientImmHxState(patient: $patient, pastImmunizations: $pastImmunizations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientImmHxState &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.pastImmunizations, pastImmunizations) ||
                const DeepCollectionEquality()
                    .equals(other.pastImmunizations, pastImmunizations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(pastImmunizations);

  @override
  _$PatientImmHxStateCopyWith<_PatientImmHxState> get copyWith =>
      __$PatientImmHxStateCopyWithImpl<_PatientImmHxState>(this, _$identity);
}

abstract class _PatientImmHxState implements PatientImmHxState {
  const factory _PatientImmHxState(
      {PatientModel patient,
      List<Immunization> pastImmunizations}) = _$_PatientImmHxState;

  @override
  PatientModel get patient;
  @override
  List<Immunization> get pastImmunizations;
  @override
  _$PatientImmHxStateCopyWith<_PatientImmHxState> get copyWith;
}
