// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vaccines_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VaccinesEventTearOff {
  const _$VaccinesEventTearOff();

// ignore: unused_element
  EnterBirthdate enterBirthdate(DateTime birth) {
    return EnterBirthdate(
      birth,
    );
  }

// ignore: unused_element
  EnterVaccine enterVaccine() {
    return const EnterVaccine();
  }
}

// ignore: unused_element
const $VaccinesEvent = _$VaccinesEventTearOff();

mixin _$VaccinesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    @required Result orElse(),
  });
}

abstract class $VaccinesEventCopyWith<$Res> {
  factory $VaccinesEventCopyWith(
          VaccinesEvent value, $Res Function(VaccinesEvent) then) =
      _$VaccinesEventCopyWithImpl<$Res>;
}

class _$VaccinesEventCopyWithImpl<$Res>
    implements $VaccinesEventCopyWith<$Res> {
  _$VaccinesEventCopyWithImpl(this._value, this._then);

  final VaccinesEvent _value;
  // ignore: unused_field
  final $Res Function(VaccinesEvent) _then;
}

abstract class $EnterBirthdateCopyWith<$Res> {
  factory $EnterBirthdateCopyWith(
          EnterBirthdate value, $Res Function(EnterBirthdate) then) =
      _$EnterBirthdateCopyWithImpl<$Res>;
  $Res call({DateTime birth});
}

class _$EnterBirthdateCopyWithImpl<$Res>
    extends _$VaccinesEventCopyWithImpl<$Res>
    implements $EnterBirthdateCopyWith<$Res> {
  _$EnterBirthdateCopyWithImpl(
      EnterBirthdate _value, $Res Function(EnterBirthdate) _then)
      : super(_value, (v) => _then(v as EnterBirthdate));

  @override
  EnterBirthdate get _value => super._value as EnterBirthdate;

  @override
  $Res call({
    Object birth = freezed,
  }) {
    return _then(EnterBirthdate(
      birth == freezed ? _value.birth : birth as DateTime,
    ));
  }
}

class _$EnterBirthdate implements EnterBirthdate {
  const _$EnterBirthdate(this.birth) : assert(birth != null);

  @override
  final DateTime birth;

  @override
  String toString() {
    return 'VaccinesEvent.enterBirthdate(birth: $birth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnterBirthdate &&
            (identical(other.birth, birth) ||
                const DeepCollectionEquality().equals(other.birth, birth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(birth);

  @override
  $EnterBirthdateCopyWith<EnterBirthdate> get copyWith =>
      _$EnterBirthdateCopyWithImpl<EnterBirthdate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    return enterBirthdate(birth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enterBirthdate != null) {
      return enterBirthdate(birth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    return enterBirthdate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enterBirthdate != null) {
      return enterBirthdate(this);
    }
    return orElse();
  }
}

abstract class EnterBirthdate implements VaccinesEvent {
  const factory EnterBirthdate(DateTime birth) = _$EnterBirthdate;

  DateTime get birth;
  $EnterBirthdateCopyWith<EnterBirthdate> get copyWith;
}

abstract class $EnterVaccineCopyWith<$Res> {
  factory $EnterVaccineCopyWith(
          EnterVaccine value, $Res Function(EnterVaccine) then) =
      _$EnterVaccineCopyWithImpl<$Res>;
}

class _$EnterVaccineCopyWithImpl<$Res> extends _$VaccinesEventCopyWithImpl<$Res>
    implements $EnterVaccineCopyWith<$Res> {
  _$EnterVaccineCopyWithImpl(
      EnterVaccine _value, $Res Function(EnterVaccine) _then)
      : super(_value, (v) => _then(v as EnterVaccine));

  @override
  EnterVaccine get _value => super._value as EnterVaccine;
}

class _$EnterVaccine implements EnterVaccine {
  const _$EnterVaccine();

  @override
  String toString() {
    return 'VaccinesEvent.enterVaccine()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EnterVaccine);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    return enterVaccine();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enterVaccine != null) {
      return enterVaccine();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    return enterVaccine(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (enterVaccine != null) {
      return enterVaccine(this);
    }
    return orElse();
  }
}

abstract class EnterVaccine implements VaccinesEvent {
  const factory EnterVaccine() = _$EnterVaccine;
}

class _$VaccinesStateTearOff {
  const _$VaccinesStateTearOff();

// ignore: unused_element
  _VaccinesState call(
      {String name,
      PatientModel patient,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs}) {
    return _VaccinesState(
      name: name,
      patient: patient,
      immEvals: immEvals,
      fullImmRecs: fullImmRecs,
      displayImmRecs: displayImmRecs,
    );
  }
}

// ignore: unused_element
const $VaccinesState = _$VaccinesStateTearOff();

mixin _$VaccinesState {
  String get name;
  PatientModel get patient;
  List<ImmunizationEvaluation> get immEvals;
  List<ImmunizationRecommendationRecommendation> get fullImmRecs;
  List<ImmunizationRecommendationRecommendation> get displayImmRecs;

  $VaccinesStateCopyWith<VaccinesState> get copyWith;
}

abstract class $VaccinesStateCopyWith<$Res> {
  factory $VaccinesStateCopyWith(
          VaccinesState value, $Res Function(VaccinesState) then) =
      _$VaccinesStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      PatientModel patient,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs});
}

class _$VaccinesStateCopyWithImpl<$Res>
    implements $VaccinesStateCopyWith<$Res> {
  _$VaccinesStateCopyWithImpl(this._value, this._then);

  final VaccinesState _value;
  // ignore: unused_field
  final $Res Function(VaccinesState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object patient = freezed,
    Object immEvals = freezed,
    Object fullImmRecs = freezed,
    Object displayImmRecs = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
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

abstract class _$VaccinesStateCopyWith<$Res>
    implements $VaccinesStateCopyWith<$Res> {
  factory _$VaccinesStateCopyWith(
          _VaccinesState value, $Res Function(_VaccinesState) then) =
      __$VaccinesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      PatientModel patient,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs});
}

class __$VaccinesStateCopyWithImpl<$Res>
    extends _$VaccinesStateCopyWithImpl<$Res>
    implements _$VaccinesStateCopyWith<$Res> {
  __$VaccinesStateCopyWithImpl(
      _VaccinesState _value, $Res Function(_VaccinesState) _then)
      : super(_value, (v) => _then(v as _VaccinesState));

  @override
  _VaccinesState get _value => super._value as _VaccinesState;

  @override
  $Res call({
    Object name = freezed,
    Object patient = freezed,
    Object immEvals = freezed,
    Object fullImmRecs = freezed,
    Object displayImmRecs = freezed,
  }) {
    return _then(_VaccinesState(
      name: name == freezed ? _value.name : name as String,
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

class _$_VaccinesState implements _VaccinesState {
  const _$_VaccinesState(
      {this.name,
      this.patient,
      this.immEvals,
      this.fullImmRecs,
      this.displayImmRecs});

  @override
  final String name;
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
    return 'VaccinesState(name: $name, patient: $patient, immEvals: $immEvals, fullImmRecs: $fullImmRecs, displayImmRecs: $displayImmRecs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinesState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(patient) ^
      const DeepCollectionEquality().hash(immEvals) ^
      const DeepCollectionEquality().hash(fullImmRecs) ^
      const DeepCollectionEquality().hash(displayImmRecs);

  @override
  _$VaccinesStateCopyWith<_VaccinesState> get copyWith =>
      __$VaccinesStateCopyWithImpl<_VaccinesState>(this, _$identity);
}

abstract class _VaccinesState implements VaccinesState {
  const factory _VaccinesState(
          {String name,
          PatientModel patient,
          List<ImmunizationEvaluation> immEvals,
          List<ImmunizationRecommendationRecommendation> fullImmRecs,
          List<ImmunizationRecommendationRecommendation> displayImmRecs}) =
      _$_VaccinesState;

  @override
  String get name;
  @override
  PatientModel get patient;
  @override
  List<ImmunizationEvaluation> get immEvals;
  @override
  List<ImmunizationRecommendationRecommendation> get fullImmRecs;
  @override
  List<ImmunizationRecommendationRecommendation> get displayImmRecs;
  @override
  _$VaccinesStateCopyWith<_VaccinesState> get copyWith;
}
