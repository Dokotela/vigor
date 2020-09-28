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
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList}) {
    return _VaccinesState(
      name: name,
      nameError: nameError,
      newNameError: newNameError,
      nameList: nameList,
      patientList: patientList,
    );
  }
}

// ignore: unused_element
const $VaccinesState = _$VaccinesStateTearOff();

mixin _$VaccinesState {
  String get name;
  String get nameError;
  String get newNameError;
  List<String> get nameList;
  List<Patient> get patientList;

  $VaccinesStateCopyWith<VaccinesState> get copyWith;
}

abstract class $VaccinesStateCopyWith<$Res> {
  factory $VaccinesStateCopyWith(
          VaccinesState value, $Res Function(VaccinesState) then) =
      _$VaccinesStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList});
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
    Object nameError = freezed,
    Object newNameError = freezed,
    Object nameList = freezed,
    Object patientList = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      nameError: nameError == freezed ? _value.nameError : nameError as String,
      newNameError: newNameError == freezed
          ? _value.newNameError
          : newNameError as String,
      nameList:
          nameList == freezed ? _value.nameList : nameList as List<String>,
      patientList: patientList == freezed
          ? _value.patientList
          : patientList as List<Patient>,
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
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList});
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
    Object nameError = freezed,
    Object newNameError = freezed,
    Object nameList = freezed,
    Object patientList = freezed,
  }) {
    return _then(_VaccinesState(
      name: name == freezed ? _value.name : name as String,
      nameError: nameError == freezed ? _value.nameError : nameError as String,
      newNameError: newNameError == freezed
          ? _value.newNameError
          : newNameError as String,
      nameList:
          nameList == freezed ? _value.nameList : nameList as List<String>,
      patientList: patientList == freezed
          ? _value.patientList
          : patientList as List<Patient>,
    ));
  }
}

class _$_VaccinesState implements _VaccinesState {
  const _$_VaccinesState(
      {this.name,
      this.nameError,
      this.newNameError,
      this.nameList,
      this.patientList});

  @override
  final String name;
  @override
  final String nameError;
  @override
  final String newNameError;
  @override
  final List<String> nameList;
  @override
  final List<Patient> patientList;

  @override
  String toString() {
    return 'VaccinesState(name: $name, nameError: $nameError, newNameError: $newNameError, nameList: $nameList, patientList: $patientList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VaccinesState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nameError, nameError) ||
                const DeepCollectionEquality()
                    .equals(other.nameError, nameError)) &&
            (identical(other.newNameError, newNameError) ||
                const DeepCollectionEquality()
                    .equals(other.newNameError, newNameError)) &&
            (identical(other.nameList, nameList) ||
                const DeepCollectionEquality()
                    .equals(other.nameList, nameList)) &&
            (identical(other.patientList, patientList) ||
                const DeepCollectionEquality()
                    .equals(other.patientList, patientList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameError) ^
      const DeepCollectionEquality().hash(newNameError) ^
      const DeepCollectionEquality().hash(nameList) ^
      const DeepCollectionEquality().hash(patientList);

  @override
  _$VaccinesStateCopyWith<_VaccinesState> get copyWith =>
      __$VaccinesStateCopyWithImpl<_VaccinesState>(this, _$identity);
}

abstract class _VaccinesState implements VaccinesState {
  const factory _VaccinesState(
      {String name,
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList}) = _$_VaccinesState;

  @override
  String get name;
  @override
  String get nameError;
  @override
  String get newNameError;
  @override
  List<String> get nameList;
  @override
  List<Patient> get patientList;
  @override
  _$VaccinesStateCopyWith<_VaccinesState> get copyWith;
}
