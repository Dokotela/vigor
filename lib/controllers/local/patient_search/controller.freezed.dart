// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PatientSearchStateTearOff {
  const _$PatientSearchStateTearOff();

// ignore: unused_element
  _PatientSearchState call(
      {List<Resource> fullPatientList = const <Resource>[],
      List<Resource> activePatientList = const <Resource>[],
      TextEditingController searchName}) {
    return _PatientSearchState(
      fullPatientList: fullPatientList,
      activePatientList: activePatientList,
      searchName: searchName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PatientSearchState = _$PatientSearchStateTearOff();

/// @nodoc
mixin _$PatientSearchState {
  List<Resource> get fullPatientList;
  List<Resource> get activePatientList;
  TextEditingController get searchName;

  $PatientSearchStateCopyWith<PatientSearchState> get copyWith;
}

/// @nodoc
abstract class $PatientSearchStateCopyWith<$Res> {
  factory $PatientSearchStateCopyWith(
          PatientSearchState value, $Res Function(PatientSearchState) then) =
      _$PatientSearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<Resource> fullPatientList,
      List<Resource> activePatientList,
      TextEditingController searchName});
}

/// @nodoc
class _$PatientSearchStateCopyWithImpl<$Res>
    implements $PatientSearchStateCopyWith<$Res> {
  _$PatientSearchStateCopyWithImpl(this._value, this._then);

  final PatientSearchState _value;
  // ignore: unused_field
  final $Res Function(PatientSearchState) _then;

  @override
  $Res call({
    Object fullPatientList = freezed,
    Object activePatientList = freezed,
    Object searchName = freezed,
  }) {
    return _then(_value.copyWith(
      fullPatientList: fullPatientList == freezed
          ? _value.fullPatientList
          : fullPatientList as List<Resource>,
      activePatientList: activePatientList == freezed
          ? _value.activePatientList
          : activePatientList as List<Resource>,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$PatientSearchStateCopyWith<$Res>
    implements $PatientSearchStateCopyWith<$Res> {
  factory _$PatientSearchStateCopyWith(
          _PatientSearchState value, $Res Function(_PatientSearchState) then) =
      __$PatientSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Resource> fullPatientList,
      List<Resource> activePatientList,
      TextEditingController searchName});
}

/// @nodoc
class __$PatientSearchStateCopyWithImpl<$Res>
    extends _$PatientSearchStateCopyWithImpl<$Res>
    implements _$PatientSearchStateCopyWith<$Res> {
  __$PatientSearchStateCopyWithImpl(
      _PatientSearchState _value, $Res Function(_PatientSearchState) _then)
      : super(_value, (v) => _then(v as _PatientSearchState));

  @override
  _PatientSearchState get _value => super._value as _PatientSearchState;

  @override
  $Res call({
    Object fullPatientList = freezed,
    Object activePatientList = freezed,
    Object searchName = freezed,
  }) {
    return _then(_PatientSearchState(
      fullPatientList: fullPatientList == freezed
          ? _value.fullPatientList
          : fullPatientList as List<Resource>,
      activePatientList: activePatientList == freezed
          ? _value.activePatientList
          : activePatientList as List<Resource>,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName as TextEditingController,
    ));
  }
}

/// @nodoc
class _$_PatientSearchState extends _PatientSearchState {
  _$_PatientSearchState(
      {this.fullPatientList = const <Resource>[],
      this.activePatientList = const <Resource>[],
      this.searchName})
      : assert(fullPatientList != null),
        assert(activePatientList != null),
        super._();

  @JsonKey(defaultValue: const <Resource>[])
  @override
  final List<Resource> fullPatientList;
  @JsonKey(defaultValue: const <Resource>[])
  @override
  final List<Resource> activePatientList;
  @override
  final TextEditingController searchName;

  @override
  String toString() {
    return 'PatientSearchState(fullPatientList: $fullPatientList, activePatientList: $activePatientList, searchName: $searchName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientSearchState &&
            (identical(other.fullPatientList, fullPatientList) ||
                const DeepCollectionEquality()
                    .equals(other.fullPatientList, fullPatientList)) &&
            (identical(other.activePatientList, activePatientList) ||
                const DeepCollectionEquality()
                    .equals(other.activePatientList, activePatientList)) &&
            (identical(other.searchName, searchName) ||
                const DeepCollectionEquality()
                    .equals(other.searchName, searchName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullPatientList) ^
      const DeepCollectionEquality().hash(activePatientList) ^
      const DeepCollectionEquality().hash(searchName);

  @override
  _$PatientSearchStateCopyWith<_PatientSearchState> get copyWith =>
      __$PatientSearchStateCopyWithImpl<_PatientSearchState>(this, _$identity);
}

abstract class _PatientSearchState extends PatientSearchState {
  _PatientSearchState._() : super._();
  factory _PatientSearchState(
      {List<Resource> fullPatientList,
      List<Resource> activePatientList,
      TextEditingController searchName}) = _$_PatientSearchState;

  @override
  List<Resource> get fullPatientList;
  @override
  List<Resource> get activePatientList;
  @override
  TextEditingController get searchName;
  @override
  _$PatientSearchStateCopyWith<_PatientSearchState> get copyWith;
}

/// @nodoc
class _$PatientSearchEventTearOff {
  const _$PatientSearchEventTearOff();

// ignore: unused_element
  _LoadList loadList({List<Resource> patientList}) {
    return _LoadList(
      patientList: patientList,
    );
  }

// ignore: unused_element
  _SearchPatientByName searchPatientByName({String name}) {
    return _SearchPatientByName(
      name: name,
    );
  }

// ignore: unused_element
  _SortPatientsByName sortPatientsByName() {
    return const _SortPatientsByName();
  }

// ignore: unused_element
  _SortPatientsByBirthdate sortPatientsByBirthdate() {
    return const _SortPatientsByBirthdate();
  }

// ignore: unused_element
  _SortPatientsByBarrio sortPatientsByBarrio() {
    return const _SortPatientsByBarrio();
  }

// ignore: unused_element
  _SelectPatient selectPatient({int index}) {
    return _SelectPatient(
      index: index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PatientSearchEvent = _$PatientSearchEventTearOff();

/// @nodoc
mixin _$PatientSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PatientSearchEventCopyWith<$Res> {
  factory $PatientSearchEventCopyWith(
          PatientSearchEvent value, $Res Function(PatientSearchEvent) then) =
      _$PatientSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatientSearchEventCopyWithImpl<$Res>
    implements $PatientSearchEventCopyWith<$Res> {
  _$PatientSearchEventCopyWithImpl(this._value, this._then);

  final PatientSearchEvent _value;
  // ignore: unused_field
  final $Res Function(PatientSearchEvent) _then;
}

/// @nodoc
abstract class _$LoadListCopyWith<$Res> {
  factory _$LoadListCopyWith(_LoadList value, $Res Function(_LoadList) then) =
      __$LoadListCopyWithImpl<$Res>;
  $Res call({List<Resource> patientList});
}

/// @nodoc
class __$LoadListCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res>
    implements _$LoadListCopyWith<$Res> {
  __$LoadListCopyWithImpl(_LoadList _value, $Res Function(_LoadList) _then)
      : super(_value, (v) => _then(v as _LoadList));

  @override
  _LoadList get _value => super._value as _LoadList;

  @override
  $Res call({
    Object patientList = freezed,
  }) {
    return _then(_LoadList(
      patientList: patientList == freezed
          ? _value.patientList
          : patientList as List<Resource>,
    ));
  }
}

/// @nodoc
class _$_LoadList implements _LoadList {
  const _$_LoadList({this.patientList});

  @override
  final List<Resource> patientList;

  @override
  String toString() {
    return 'PatientSearchEvent.loadList(patientList: $patientList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadList &&
            (identical(other.patientList, patientList) ||
                const DeepCollectionEquality()
                    .equals(other.patientList, patientList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(patientList);

  @override
  _$LoadListCopyWith<_LoadList> get copyWith =>
      __$LoadListCopyWithImpl<_LoadList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return loadList(patientList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadList != null) {
      return loadList(patientList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class _LoadList implements PatientSearchEvent {
  const factory _LoadList({List<Resource> patientList}) = _$_LoadList;

  List<Resource> get patientList;
  _$LoadListCopyWith<_LoadList> get copyWith;
}

/// @nodoc
abstract class _$SearchPatientByNameCopyWith<$Res> {
  factory _$SearchPatientByNameCopyWith(_SearchPatientByName value,
          $Res Function(_SearchPatientByName) then) =
      __$SearchPatientByNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$SearchPatientByNameCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res>
    implements _$SearchPatientByNameCopyWith<$Res> {
  __$SearchPatientByNameCopyWithImpl(
      _SearchPatientByName _value, $Res Function(_SearchPatientByName) _then)
      : super(_value, (v) => _then(v as _SearchPatientByName));

  @override
  _SearchPatientByName get _value => super._value as _SearchPatientByName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_SearchPatientByName(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_SearchPatientByName implements _SearchPatientByName {
  const _$_SearchPatientByName({this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PatientSearchEvent.searchPatientByName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchPatientByName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$SearchPatientByNameCopyWith<_SearchPatientByName> get copyWith =>
      __$SearchPatientByNameCopyWithImpl<_SearchPatientByName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return searchPatientByName(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPatientByName != null) {
      return searchPatientByName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return searchPatientByName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchPatientByName != null) {
      return searchPatientByName(this);
    }
    return orElse();
  }
}

abstract class _SearchPatientByName implements PatientSearchEvent {
  const factory _SearchPatientByName({String name}) = _$_SearchPatientByName;

  String get name;
  _$SearchPatientByNameCopyWith<_SearchPatientByName> get copyWith;
}

/// @nodoc
abstract class _$SortPatientsByNameCopyWith<$Res> {
  factory _$SortPatientsByNameCopyWith(
          _SortPatientsByName value, $Res Function(_SortPatientsByName) then) =
      __$SortPatientsByNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$SortPatientsByNameCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res>
    implements _$SortPatientsByNameCopyWith<$Res> {
  __$SortPatientsByNameCopyWithImpl(
      _SortPatientsByName _value, $Res Function(_SortPatientsByName) _then)
      : super(_value, (v) => _then(v as _SortPatientsByName));

  @override
  _SortPatientsByName get _value => super._value as _SortPatientsByName;
}

/// @nodoc
class _$_SortPatientsByName implements _SortPatientsByName {
  const _$_SortPatientsByName();

  @override
  String toString() {
    return 'PatientSearchEvent.sortPatientsByName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SortPatientsByName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return sortPatientsByName();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPatientsByName != null) {
      return sortPatientsByName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return sortPatientsByName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPatientsByName != null) {
      return sortPatientsByName(this);
    }
    return orElse();
  }
}

abstract class _SortPatientsByName implements PatientSearchEvent {
  const factory _SortPatientsByName() = _$_SortPatientsByName;
}

/// @nodoc
abstract class _$SortPatientsByBirthdateCopyWith<$Res> {
  factory _$SortPatientsByBirthdateCopyWith(_SortPatientsByBirthdate value,
          $Res Function(_SortPatientsByBirthdate) then) =
      __$SortPatientsByBirthdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SortPatientsByBirthdateCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res>
    implements _$SortPatientsByBirthdateCopyWith<$Res> {
  __$SortPatientsByBirthdateCopyWithImpl(_SortPatientsByBirthdate _value,
      $Res Function(_SortPatientsByBirthdate) _then)
      : super(_value, (v) => _then(v as _SortPatientsByBirthdate));

  @override
  _SortPatientsByBirthdate get _value =>
      super._value as _SortPatientsByBirthdate;
}

/// @nodoc
class _$_SortPatientsByBirthdate implements _SortPatientsByBirthdate {
  const _$_SortPatientsByBirthdate();

  @override
  String toString() {
    return 'PatientSearchEvent.sortPatientsByBirthdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SortPatientsByBirthdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return sortPatientsByBirthdate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPatientsByBirthdate != null) {
      return sortPatientsByBirthdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return sortPatientsByBirthdate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPatientsByBirthdate != null) {
      return sortPatientsByBirthdate(this);
    }
    return orElse();
  }
}

abstract class _SortPatientsByBirthdate implements PatientSearchEvent {
  const factory _SortPatientsByBirthdate() = _$_SortPatientsByBirthdate;
}

/// @nodoc
abstract class _$SortPatientsByBarrioCopyWith<$Res> {
  factory _$SortPatientsByBarrioCopyWith(_SortPatientsByBarrio value,
          $Res Function(_SortPatientsByBarrio) then) =
      __$SortPatientsByBarrioCopyWithImpl<$Res>;
}

/// @nodoc
class __$SortPatientsByBarrioCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res>
    implements _$SortPatientsByBarrioCopyWith<$Res> {
  __$SortPatientsByBarrioCopyWithImpl(
      _SortPatientsByBarrio _value, $Res Function(_SortPatientsByBarrio) _then)
      : super(_value, (v) => _then(v as _SortPatientsByBarrio));

  @override
  _SortPatientsByBarrio get _value => super._value as _SortPatientsByBarrio;
}

/// @nodoc
class _$_SortPatientsByBarrio implements _SortPatientsByBarrio {
  const _$_SortPatientsByBarrio();

  @override
  String toString() {
    return 'PatientSearchEvent.sortPatientsByBarrio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SortPatientsByBarrio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return sortPatientsByBarrio();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPatientsByBarrio != null) {
      return sortPatientsByBarrio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return sortPatientsByBarrio(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sortPatientsByBarrio != null) {
      return sortPatientsByBarrio(this);
    }
    return orElse();
  }
}

abstract class _SortPatientsByBarrio implements PatientSearchEvent {
  const factory _SortPatientsByBarrio() = _$_SortPatientsByBarrio;
}

/// @nodoc
abstract class _$SelectPatientCopyWith<$Res> {
  factory _$SelectPatientCopyWith(
          _SelectPatient value, $Res Function(_SelectPatient) then) =
      __$SelectPatientCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$SelectPatientCopyWithImpl<$Res>
    extends _$PatientSearchEventCopyWithImpl<$Res>
    implements _$SelectPatientCopyWith<$Res> {
  __$SelectPatientCopyWithImpl(
      _SelectPatient _value, $Res Function(_SelectPatient) _then)
      : super(_value, (v) => _then(v as _SelectPatient));

  @override
  _SelectPatient get _value => super._value as _SelectPatient;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_SelectPatient(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_SelectPatient implements _SelectPatient {
  const _$_SelectPatient({this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PatientSearchEvent.selectPatient(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectPatient &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$SelectPatientCopyWith<_SelectPatient> get copyWith =>
      __$SelectPatientCopyWithImpl<_SelectPatient>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadList(List<Resource> patientList),
    @required Result searchPatientByName(String name),
    @required Result sortPatientsByName(),
    @required Result sortPatientsByBirthdate(),
    @required Result sortPatientsByBarrio(),
    @required Result selectPatient(int index),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return selectPatient(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadList(List<Resource> patientList),
    Result searchPatientByName(String name),
    Result sortPatientsByName(),
    Result sortPatientsByBirthdate(),
    Result sortPatientsByBarrio(),
    Result selectPatient(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectPatient != null) {
      return selectPatient(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadList(_LoadList value),
    @required Result searchPatientByName(_SearchPatientByName value),
    @required Result sortPatientsByName(_SortPatientsByName value),
    @required Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    @required Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    @required Result selectPatient(_SelectPatient value),
  }) {
    assert(loadList != null);
    assert(searchPatientByName != null);
    assert(sortPatientsByName != null);
    assert(sortPatientsByBirthdate != null);
    assert(sortPatientsByBarrio != null);
    assert(selectPatient != null);
    return selectPatient(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadList(_LoadList value),
    Result searchPatientByName(_SearchPatientByName value),
    Result sortPatientsByName(_SortPatientsByName value),
    Result sortPatientsByBirthdate(_SortPatientsByBirthdate value),
    Result sortPatientsByBarrio(_SortPatientsByBarrio value),
    Result selectPatient(_SelectPatient value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectPatient != null) {
      return selectPatient(this);
    }
    return orElse();
  }
}

abstract class _SelectPatient implements PatientSearchEvent {
  const factory _SelectPatient({int index}) = _$_SelectPatient;

  int get index;
  _$SelectPatientCopyWith<_SelectPatient> get copyWith;
}
