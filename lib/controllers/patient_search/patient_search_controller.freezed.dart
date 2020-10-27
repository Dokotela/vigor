// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'patient_search_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PatientSearchStateTearOff {
  const _$PatientSearchStateTearOff();

// ignore: unused_element
  _PatientSearchState call(
      {List<Resource> fullPatientList, List<Resource> activePatientList}) {
    return _PatientSearchState(
      fullPatientList: fullPatientList,
      activePatientList: activePatientList,
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

  $PatientSearchStateCopyWith<PatientSearchState> get copyWith;
}

/// @nodoc
abstract class $PatientSearchStateCopyWith<$Res> {
  factory $PatientSearchStateCopyWith(
          PatientSearchState value, $Res Function(PatientSearchState) then) =
      _$PatientSearchStateCopyWithImpl<$Res>;
  $Res call({List<Resource> fullPatientList, List<Resource> activePatientList});
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
  }) {
    return _then(_value.copyWith(
      fullPatientList: fullPatientList == freezed
          ? _value.fullPatientList
          : fullPatientList as List<Resource>,
      activePatientList: activePatientList == freezed
          ? _value.activePatientList
          : activePatientList as List<Resource>,
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
  $Res call({List<Resource> fullPatientList, List<Resource> activePatientList});
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
  }) {
    return _then(_PatientSearchState(
      fullPatientList: fullPatientList == freezed
          ? _value.fullPatientList
          : fullPatientList as List<Resource>,
      activePatientList: activePatientList == freezed
          ? _value.activePatientList
          : activePatientList as List<Resource>,
    ));
  }
}

/// @nodoc
class _$_PatientSearchState implements _PatientSearchState {
  const _$_PatientSearchState({this.fullPatientList, this.activePatientList});

  @override
  final List<Resource> fullPatientList;
  @override
  final List<Resource> activePatientList;

  @override
  String toString() {
    return 'PatientSearchState(fullPatientList: $fullPatientList, activePatientList: $activePatientList)';
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
                    .equals(other.activePatientList, activePatientList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullPatientList) ^
      const DeepCollectionEquality().hash(activePatientList);

  @override
  _$PatientSearchStateCopyWith<_PatientSearchState> get copyWith =>
      __$PatientSearchStateCopyWithImpl<_PatientSearchState>(this, _$identity);
}

abstract class _PatientSearchState implements PatientSearchState {
  const factory _PatientSearchState(
      {List<Resource> fullPatientList,
      List<Resource> activePatientList}) = _$_PatientSearchState;

  @override
  List<Resource> get fullPatientList;
  @override
  List<Resource> get activePatientList;
  @override
  _$PatientSearchStateCopyWith<_PatientSearchState> get copyWith;
}
