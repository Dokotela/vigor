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

// ignore: unused_element
  NewVaccineType newVaccineType(String type) {
    return NewVaccineType(
      type,
    );
  }

// ignore: unused_element
  NewVaccineName newVaccineName(String name) {
    return NewVaccineName(
      name,
    );
  }

// ignore: unused_element
  NewVaccineDate newVaccineDate(DateTime date) {
    return NewVaccineDate(
      date,
    );
  }
}

// ignore: unused_element
const $VaccinesEvent = _$VaccinesEventTearOff();

mixin _$VaccinesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
    @required Result newVaccineType(String type),
    @required Result newVaccineName(String name),
    @required Result newVaccineDate(DateTime date),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    Result newVaccineType(String type),
    Result newVaccineName(String name),
    Result newVaccineDate(DateTime date),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
    @required Result newVaccineType(NewVaccineType value),
    @required Result newVaccineName(NewVaccineName value),
    @required Result newVaccineDate(NewVaccineDate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    Result newVaccineType(NewVaccineType value),
    Result newVaccineName(NewVaccineName value),
    Result newVaccineDate(NewVaccineDate value),
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
    @required Result newVaccineType(String type),
    @required Result newVaccineName(String name),
    @required Result newVaccineDate(DateTime date),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return enterBirthdate(birth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    Result newVaccineType(String type),
    Result newVaccineName(String name),
    Result newVaccineDate(DateTime date),
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
    @required Result newVaccineType(NewVaccineType value),
    @required Result newVaccineName(NewVaccineName value),
    @required Result newVaccineDate(NewVaccineDate value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return enterBirthdate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    Result newVaccineType(NewVaccineType value),
    Result newVaccineName(NewVaccineName value),
    Result newVaccineDate(NewVaccineDate value),
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
    @required Result newVaccineType(String type),
    @required Result newVaccineName(String name),
    @required Result newVaccineDate(DateTime date),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return enterVaccine();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    Result newVaccineType(String type),
    Result newVaccineName(String name),
    Result newVaccineDate(DateTime date),
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
    @required Result newVaccineType(NewVaccineType value),
    @required Result newVaccineName(NewVaccineName value),
    @required Result newVaccineDate(NewVaccineDate value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return enterVaccine(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    Result newVaccineType(NewVaccineType value),
    Result newVaccineName(NewVaccineName value),
    Result newVaccineDate(NewVaccineDate value),
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

abstract class $NewVaccineTypeCopyWith<$Res> {
  factory $NewVaccineTypeCopyWith(
          NewVaccineType value, $Res Function(NewVaccineType) then) =
      _$NewVaccineTypeCopyWithImpl<$Res>;
  $Res call({String type});
}

class _$NewVaccineTypeCopyWithImpl<$Res>
    extends _$VaccinesEventCopyWithImpl<$Res>
    implements $NewVaccineTypeCopyWith<$Res> {
  _$NewVaccineTypeCopyWithImpl(
      NewVaccineType _value, $Res Function(NewVaccineType) _then)
      : super(_value, (v) => _then(v as NewVaccineType));

  @override
  NewVaccineType get _value => super._value as NewVaccineType;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(NewVaccineType(
      type == freezed ? _value.type : type as String,
    ));
  }
}

class _$NewVaccineType implements NewVaccineType {
  const _$NewVaccineType(this.type) : assert(type != null);

  @override
  final String type;

  @override
  String toString() {
    return 'VaccinesEvent.newVaccineType(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewVaccineType &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  $NewVaccineTypeCopyWith<NewVaccineType> get copyWith =>
      _$NewVaccineTypeCopyWithImpl<NewVaccineType>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
    @required Result newVaccineType(String type),
    @required Result newVaccineName(String name),
    @required Result newVaccineDate(DateTime date),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return newVaccineType(type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    Result newVaccineType(String type),
    Result newVaccineName(String name),
    Result newVaccineDate(DateTime date),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newVaccineType != null) {
      return newVaccineType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
    @required Result newVaccineType(NewVaccineType value),
    @required Result newVaccineName(NewVaccineName value),
    @required Result newVaccineDate(NewVaccineDate value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return newVaccineType(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    Result newVaccineType(NewVaccineType value),
    Result newVaccineName(NewVaccineName value),
    Result newVaccineDate(NewVaccineDate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newVaccineType != null) {
      return newVaccineType(this);
    }
    return orElse();
  }
}

abstract class NewVaccineType implements VaccinesEvent {
  const factory NewVaccineType(String type) = _$NewVaccineType;

  String get type;
  $NewVaccineTypeCopyWith<NewVaccineType> get copyWith;
}

abstract class $NewVaccineNameCopyWith<$Res> {
  factory $NewVaccineNameCopyWith(
          NewVaccineName value, $Res Function(NewVaccineName) then) =
      _$NewVaccineNameCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$NewVaccineNameCopyWithImpl<$Res>
    extends _$VaccinesEventCopyWithImpl<$Res>
    implements $NewVaccineNameCopyWith<$Res> {
  _$NewVaccineNameCopyWithImpl(
      NewVaccineName _value, $Res Function(NewVaccineName) _then)
      : super(_value, (v) => _then(v as NewVaccineName));

  @override
  NewVaccineName get _value => super._value as NewVaccineName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NewVaccineName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NewVaccineName implements NewVaccineName {
  const _$NewVaccineName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'VaccinesEvent.newVaccineName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewVaccineName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NewVaccineNameCopyWith<NewVaccineName> get copyWith =>
      _$NewVaccineNameCopyWithImpl<NewVaccineName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
    @required Result newVaccineType(String type),
    @required Result newVaccineName(String name),
    @required Result newVaccineDate(DateTime date),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return newVaccineName(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    Result newVaccineType(String type),
    Result newVaccineName(String name),
    Result newVaccineDate(DateTime date),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newVaccineName != null) {
      return newVaccineName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
    @required Result newVaccineType(NewVaccineType value),
    @required Result newVaccineName(NewVaccineName value),
    @required Result newVaccineDate(NewVaccineDate value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return newVaccineName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    Result newVaccineType(NewVaccineType value),
    Result newVaccineName(NewVaccineName value),
    Result newVaccineDate(NewVaccineDate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newVaccineName != null) {
      return newVaccineName(this);
    }
    return orElse();
  }
}

abstract class NewVaccineName implements VaccinesEvent {
  const factory NewVaccineName(String name) = _$NewVaccineName;

  String get name;
  $NewVaccineNameCopyWith<NewVaccineName> get copyWith;
}

abstract class $NewVaccineDateCopyWith<$Res> {
  factory $NewVaccineDateCopyWith(
          NewVaccineDate value, $Res Function(NewVaccineDate) then) =
      _$NewVaccineDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

class _$NewVaccineDateCopyWithImpl<$Res>
    extends _$VaccinesEventCopyWithImpl<$Res>
    implements $NewVaccineDateCopyWith<$Res> {
  _$NewVaccineDateCopyWithImpl(
      NewVaccineDate _value, $Res Function(NewVaccineDate) _then)
      : super(_value, (v) => _then(v as NewVaccineDate));

  @override
  NewVaccineDate get _value => super._value as NewVaccineDate;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(NewVaccineDate(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

class _$NewVaccineDate implements NewVaccineDate {
  const _$NewVaccineDate(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'VaccinesEvent.newVaccineDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewVaccineDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  $NewVaccineDateCopyWith<NewVaccineDate> get copyWith =>
      _$NewVaccineDateCopyWithImpl<NewVaccineDate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result enterBirthdate(DateTime birth),
    @required Result enterVaccine(),
    @required Result newVaccineType(String type),
    @required Result newVaccineName(String name),
    @required Result newVaccineDate(DateTime date),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return newVaccineDate(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result enterBirthdate(DateTime birth),
    Result enterVaccine(),
    Result newVaccineType(String type),
    Result newVaccineName(String name),
    Result newVaccineDate(DateTime date),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newVaccineDate != null) {
      return newVaccineDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result enterBirthdate(EnterBirthdate value),
    @required Result enterVaccine(EnterVaccine value),
    @required Result newVaccineType(NewVaccineType value),
    @required Result newVaccineName(NewVaccineName value),
    @required Result newVaccineDate(NewVaccineDate value),
  }) {
    assert(enterBirthdate != null);
    assert(enterVaccine != null);
    assert(newVaccineType != null);
    assert(newVaccineName != null);
    assert(newVaccineDate != null);
    return newVaccineDate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result enterBirthdate(EnterBirthdate value),
    Result enterVaccine(EnterVaccine value),
    Result newVaccineType(NewVaccineType value),
    Result newVaccineName(NewVaccineName value),
    Result newVaccineDate(NewVaccineDate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newVaccineDate != null) {
      return newVaccineDate(this);
    }
    return orElse();
  }
}

abstract class NewVaccineDate implements VaccinesEvent {
  const factory NewVaccineDate(DateTime date) = _$NewVaccineDate;

  DateTime get date;
  $NewVaccineDateCopyWith<NewVaccineDate> get copyWith;
}

class _$VaccinesStateTearOff {
  const _$VaccinesStateTearOff();

// ignore: unused_element
  _VaccinesState call(
      {PatientModel patient,
      String vaccineType,
      String vaccineName,
      DateTime vaccineDate,
      List<ImmunizationEvaluation> immEvals,
      List<ImmunizationRecommendationRecommendation> fullImmRecs,
      List<ImmunizationRecommendationRecommendation> displayImmRecs}) {
    return _VaccinesState(
      patient: patient,
      vaccineType: vaccineType,
      vaccineName: vaccineName,
      vaccineDate: vaccineDate,
      immEvals: immEvals,
      fullImmRecs: fullImmRecs,
      displayImmRecs: displayImmRecs,
    );
  }
}

// ignore: unused_element
const $VaccinesState = _$VaccinesStateTearOff();

mixin _$VaccinesState {
  PatientModel get patient;
  String get vaccineType;
  String get vaccineName;
  DateTime get vaccineDate;
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
      {PatientModel patient,
      String vaccineType,
      String vaccineName,
      DateTime vaccineDate,
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
    Object patient = freezed,
    Object vaccineType = freezed,
    Object vaccineName = freezed,
    Object vaccineDate = freezed,
    Object immEvals = freezed,
    Object fullImmRecs = freezed,
    Object displayImmRecs = freezed,
  }) {
    return _then(_value.copyWith(
      patient: patient == freezed ? _value.patient : patient as PatientModel,
      vaccineType:
          vaccineType == freezed ? _value.vaccineType : vaccineType as String,
      vaccineName:
          vaccineName == freezed ? _value.vaccineName : vaccineName as String,
      vaccineDate:
          vaccineDate == freezed ? _value.vaccineDate : vaccineDate as DateTime,
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
      {PatientModel patient,
      String vaccineType,
      String vaccineName,
      DateTime vaccineDate,
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
    Object patient = freezed,
    Object vaccineType = freezed,
    Object vaccineName = freezed,
    Object vaccineDate = freezed,
    Object immEvals = freezed,
    Object fullImmRecs = freezed,
    Object displayImmRecs = freezed,
  }) {
    return _then(_VaccinesState(
      patient: patient == freezed ? _value.patient : patient as PatientModel,
      vaccineType:
          vaccineType == freezed ? _value.vaccineType : vaccineType as String,
      vaccineName:
          vaccineName == freezed ? _value.vaccineName : vaccineName as String,
      vaccineDate:
          vaccineDate == freezed ? _value.vaccineDate : vaccineDate as DateTime,
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
      {this.patient,
      this.vaccineType,
      this.vaccineName,
      this.vaccineDate,
      this.immEvals,
      this.fullImmRecs,
      this.displayImmRecs});

  @override
  final PatientModel patient;
  @override
  final String vaccineType;
  @override
  final String vaccineName;
  @override
  final DateTime vaccineDate;
  @override
  final List<ImmunizationEvaluation> immEvals;
  @override
  final List<ImmunizationRecommendationRecommendation> fullImmRecs;
  @override
  final List<ImmunizationRecommendationRecommendation> displayImmRecs;

  @override
  String toString() {
    return 'VaccinesState(patient: $patient, vaccineType: $vaccineType, vaccineName: $vaccineName, vaccineDate: $vaccineDate, immEvals: $immEvals, fullImmRecs: $fullImmRecs, displayImmRecs: $displayImmRecs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinesState &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality()
                    .equals(other.patient, patient)) &&
            (identical(other.vaccineType, vaccineType) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineType, vaccineType)) &&
            (identical(other.vaccineName, vaccineName) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineName, vaccineName)) &&
            (identical(other.vaccineDate, vaccineDate) ||
                const DeepCollectionEquality()
                    .equals(other.vaccineDate, vaccineDate)) &&
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
      const DeepCollectionEquality().hash(vaccineType) ^
      const DeepCollectionEquality().hash(vaccineName) ^
      const DeepCollectionEquality().hash(vaccineDate) ^
      const DeepCollectionEquality().hash(immEvals) ^
      const DeepCollectionEquality().hash(fullImmRecs) ^
      const DeepCollectionEquality().hash(displayImmRecs);

  @override
  _$VaccinesStateCopyWith<_VaccinesState> get copyWith =>
      __$VaccinesStateCopyWithImpl<_VaccinesState>(this, _$identity);
}

abstract class _VaccinesState implements VaccinesState {
  const factory _VaccinesState(
          {PatientModel patient,
          String vaccineType,
          String vaccineName,
          DateTime vaccineDate,
          List<ImmunizationEvaluation> immEvals,
          List<ImmunizationRecommendationRecommendation> fullImmRecs,
          List<ImmunizationRecommendationRecommendation> displayImmRecs}) =
      _$_VaccinesState;

  @override
  PatientModel get patient;
  @override
  String get vaccineType;
  @override
  String get vaccineName;
  @override
  DateTime get vaccineDate;
  @override
  List<ImmunizationEvaluation> get immEvals;
  @override
  List<ImmunizationRecommendationRecommendation> get fullImmRecs;
  @override
  List<ImmunizationRecommendationRecommendation> get displayImmRecs;
  @override
  _$VaccinesStateCopyWith<_VaccinesState> get copyWith;
}
