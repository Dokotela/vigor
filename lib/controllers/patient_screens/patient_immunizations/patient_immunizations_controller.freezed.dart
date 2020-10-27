// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'patient_immunizations_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PatientImmunizationsStateTearOff {
  const _$PatientImmunizationsStateTearOff();

// ignore: unused_element
  _PatientImmunizationsState call(
      {PatientModel patient,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs}) {
    return _PatientImmunizationsState(
      patient: patient,
      immEvals: immEvals,
      fullImmRecs: fullImmRecs,
      displayImmRecs: displayImmRecs,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PatientImmunizationsState = _$PatientImmunizationsStateTearOff();

/// @nodoc
mixin _$PatientImmunizationsState {
  PatientModel get patient;
  List<ImmunizationEvaluation> get immEvals;
  List<ImmunizationRecommendationRecommendation> get fullImmRecs;
  List<ImmunizationRecommendationRecommendation> get displayImmRecs;

  $PatientImmunizationsStateCopyWith<PatientImmunizationsState> get copyWith;
}

/// @nodoc
abstract class $PatientImmunizationsStateCopyWith<$Res> {
  factory $PatientImmunizationsStateCopyWith(PatientImmunizationsState value,
          $Res Function(PatientImmunizationsState) then) =
      _$PatientImmunizationsStateCopyWithImpl<$Res>;
  $Res call(
      {PatientModel patient,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs});
}

/// @nodoc
class _$PatientImmunizationsStateCopyWithImpl<$Res>
    implements $PatientImmunizationsStateCopyWith<$Res> {
  _$PatientImmunizationsStateCopyWithImpl(this._value, this._then);

  final PatientImmunizationsState _value;
  // ignore: unused_field
  final $Res Function(PatientImmunizationsState) _then;

  @override
  $Res call({
    Object patient = freezed,
    Object immEvals = freezed,
    Object fullImmRecs = freezed,
    Object displayImmRecs = freezed,
  }) {
    return _then(_value.copyWith(
      patient: patient == freezed ? _value.patient : patient as PatientModel,
      immEvals: immEvals == freezed
          ? _value.immEvals
          : immEvals as List<ImmunizationEvaluation>,
      fullImmRecs: fullImmRecs == freezed
          ? _value.fullImmRecs
          : fullImmRecs as List<ImmunizationRecommendationRecommendation>,
      displayImmRecs: displayImmRecs == freezed
          ? _value.displayImmRecs
          : displayImmRecs as List<ImmunizationRecommendationRecommendation>,
    ));
  }
}

/// @nodoc
abstract class _$PatientImmunizationsStateCopyWith<$Res>
    implements $PatientImmunizationsStateCopyWith<$Res> {
  factory _$PatientImmunizationsStateCopyWith(_PatientImmunizationsState value,
          $Res Function(_PatientImmunizationsState) then) =
      __$PatientImmunizationsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PatientModel patient,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs});
}

/// @nodoc
class __$PatientImmunizationsStateCopyWithImpl<$Res>
    extends _$PatientImmunizationsStateCopyWithImpl<$Res>
    implements _$PatientImmunizationsStateCopyWith<$Res> {
  __$PatientImmunizationsStateCopyWithImpl(_PatientImmunizationsState _value,
      $Res Function(_PatientImmunizationsState) _then)
      : super(_value, (v) => _then(v as _PatientImmunizationsState));

  @override
  _PatientImmunizationsState get _value =>
      super._value as _PatientImmunizationsState;

  @override
  $Res call({
    Object patient = freezed,
    Object immEvals = freezed,
    Object fullImmRecs = freezed,
    Object displayImmRecs = freezed,
  }) {
    return _then(_PatientImmunizationsState(
      patient: patient == freezed ? _value.patient : patient as PatientModel,
      immEvals: immEvals == freezed
          ? _value.immEvals
          : immEvals as List<ImmunizationEvaluation>,
      fullImmRecs: fullImmRecs == freezed
          ? _value.fullImmRecs
          : fullImmRecs as List<ImmunizationRecommendationRecommendation>,
      displayImmRecs: displayImmRecs == freezed
          ? _value.displayImmRecs
          : displayImmRecs as List<ImmunizationRecommendationRecommendation>,
    ));
  }
}

/// @nodoc
class _$_PatientImmunizationsState implements _PatientImmunizationsState {
  const _$_PatientImmunizationsState(
      {this.patient, this.immEvals, this.fullImmRecs, this.displayImmRecs});

  @override
  final PatientModel patient;
  @override
  final List<ImmunizationEvaluation> immEvals;
  @override
  final List<ImmunizationRecommendationRecommendation> fullImmRecs;
  @override
  final List<ImmunizationRecommendationRecommendation> displayImmRecs;

  @override
  String toString() {
    return 'PatientImmunizationsState(patient: $patient, immEvals: $immEvals, fullImmRecs: $fullImmRecs, displayImmRecs: $displayImmRecs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientImmunizationsState &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.immEvals, immEvals) ||
                const DeepCollectionEquality()
                    .equals(other.immEvals, immEvals)) &&
            (identical(other.fullImmRecs, fullImmRecs) ||
                const DeepCollectionEquality()
                    .equals(other.fullImmRecs, fullImmRecs)) &&
            (identical(other.displayImmRecs, displayImmRecs) ||
                const DeepCollectionEquality()
                    .equals(other.displayImmRecs, displayImmRecs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(immEvals) ^
      const DeepCollectionEquality().hash(fullImmRecs) ^
      const DeepCollectionEquality().hash(displayImmRecs);

  @override
  _$PatientImmunizationsStateCopyWith<_PatientImmunizationsState>
      get copyWith =>
          __$PatientImmunizationsStateCopyWithImpl<_PatientImmunizationsState>(
              this, _$identity);
}

abstract class _PatientImmunizationsState implements PatientImmunizationsState {
  const factory _PatientImmunizationsState(
          {PatientModel patient,
          List<ImmunizationEvaluation> immEvals,
          List<ImmunizationRecommendationRecommendation> fullImmRecs,
          List<ImmunizationRecommendationRecommendation> displayImmRecs}) =
      _$_PatientImmunizationsState;

  @override
  PatientModel get patient;
  @override
  List<ImmunizationEvaluation> get immEvals;
  @override
  List<ImmunizationRecommendationRecommendation> get fullImmRecs;
  @override
  List<ImmunizationRecommendationRecommendation> get displayImmRecs;
  @override
  _$PatientImmunizationsStateCopyWith<_PatientImmunizationsState> get copyWith;
}
