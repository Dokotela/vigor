// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

// ignore: unused_element
  NewName registerPatient(String newName) {
    return NewName(
      newName,
    );
  }

// ignore: unused_element
  SelectPatient choosePatient(String name) {
    return SelectPatient(
      name,
    );
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerPatient(String newName),
    @required Result choosePatient(String name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerPatient(String newName),
    Result choosePatient(String name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerPatient(NewName value),
    @required Result choosePatient(SelectPatient value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerPatient(NewName value),
    Result choosePatient(SelectPatient value),
    @required Result orElse(),
  });
}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

abstract class $NewNameCopyWith<$Res> {
  factory $NewNameCopyWith(NewName value, $Res Function(NewName) then) =
      _$NewNameCopyWithImpl<$Res>;
  $Res call({String newName});
}

class _$NewNameCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $NewNameCopyWith<$Res> {
  _$NewNameCopyWithImpl(NewName _value, $Res Function(NewName) _then)
      : super(_value, (v) => _then(v as NewName));

  @override
  NewName get _value => super._value as NewName;

  @override
  $Res call({
    Object newName = freezed,
  }) {
    return _then(NewName(
      newName == freezed ? _value.newName : newName as String,
    ));
  }
}

class _$NewName implements NewName {
  const _$NewName(this.newName) : assert(newName != null);

  @override
  final String newName;

  @override
  String toString() {
    return 'HomeEvent.registerPatient(newName: $newName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewName &&
            (identical(other.newName, newName) ||
                const DeepCollectionEquality().equals(other.newName, newName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newName);

  @override
  $NewNameCopyWith<NewName> get copyWith =>
      _$NewNameCopyWithImpl<NewName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerPatient(String newName),
    @required Result choosePatient(String name),
  }) {
    assert(registerPatient != null);
    assert(choosePatient != null);
    return registerPatient(newName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerPatient(String newName),
    Result choosePatient(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPatient != null) {
      return registerPatient(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerPatient(NewName value),
    @required Result choosePatient(SelectPatient value),
  }) {
    assert(registerPatient != null);
    assert(choosePatient != null);
    return registerPatient(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerPatient(NewName value),
    Result choosePatient(SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerPatient != null) {
      return registerPatient(this);
    }
    return orElse();
  }
}

abstract class NewName implements HomeEvent {
  const factory NewName(String newName) = _$NewName;

  String get newName;
  $NewNameCopyWith<NewName> get copyWith;
}

abstract class $SelectPatientCopyWith<$Res> {
  factory $SelectPatientCopyWith(
          SelectPatient value, $Res Function(SelectPatient) then) =
      _$SelectPatientCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$SelectPatientCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $SelectPatientCopyWith<$Res> {
  _$SelectPatientCopyWithImpl(
      SelectPatient _value, $Res Function(SelectPatient) _then)
      : super(_value, (v) => _then(v as SelectPatient));

  @override
  SelectPatient get _value => super._value as SelectPatient;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(SelectPatient(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$SelectPatient implements SelectPatient {
  const _$SelectPatient(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'HomeEvent.choosePatient(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectPatient &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $SelectPatientCopyWith<SelectPatient> get copyWith =>
      _$SelectPatientCopyWithImpl<SelectPatient>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerPatient(String newName),
    @required Result choosePatient(String name),
  }) {
    assert(registerPatient != null);
    assert(choosePatient != null);
    return choosePatient(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerPatient(String newName),
    Result choosePatient(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (choosePatient != null) {
      return choosePatient(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result registerPatient(NewName value),
    @required Result choosePatient(SelectPatient value),
  }) {
    assert(registerPatient != null);
    assert(choosePatient != null);
    return choosePatient(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerPatient(NewName value),
    Result choosePatient(SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (choosePatient != null) {
      return choosePatient(this);
    }
    return orElse();
  }
}

abstract class SelectPatient implements HomeEvent {
  const factory SelectPatient(String name) = _$SelectPatient;

  String get name;
  $SelectPatientCopyWith<SelectPatient> get copyWith;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call(
      {String name,
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList}) {
    return _HomeState(
      name: name,
      nameError: nameError,
      newNameError: newNameError,
      nameList: nameList,
      patientList: patientList,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  String get name;
  String get nameError;
  String get newNameError;
  List<String> get nameList;
  List<Patient> get patientList;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

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

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object name = freezed,
    Object nameError = freezed,
    Object newNameError = freezed,
    Object nameList = freezed,
    Object patientList = freezed,
  }) {
    return _then(_HomeState(
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

class _$_HomeState implements _HomeState {
  const _$_HomeState(
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
    return 'HomeState(name: $name, nameError: $nameError, newNameError: $newNameError, nameList: $nameList, patientList: $patientList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
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
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {String name,
      String nameError,
      String newNameError,
      List<String> nameList,
      List<Patient> patientList}) = _$_HomeState;

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
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
