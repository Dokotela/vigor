// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'db_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DbFailureTearOff {
  const _$DbFailureTearOff();

  UnableToSave unableToSave({required String error}) {
    return UnableToSave(
      error: error,
    );
  }

  ResourceAlreadyPresent resourceAlreadyPresent(String error) {
    return ResourceAlreadyPresent(
      error,
    );
  }

  UnableToObtainList unableToObtainList({required String error}) {
    return UnableToObtainList(
      error: error,
    );
  }

  UnableToDeleteAll unableToDeleteAll({required String error}) {
    return UnableToDeleteAll(
      error: error,
    );
  }
}

/// @nodoc
const $DbFailure = _$DbFailureTearOff();

/// @nodoc
mixin _$DbFailure {
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) unableToSave,
    required TResult Function(String error) resourceAlreadyPresent,
    required TResult Function(String error) unableToObtainList,
    required TResult Function(String error) unableToDeleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? unableToSave,
    TResult Function(String error)? resourceAlreadyPresent,
    TResult Function(String error)? unableToObtainList,
    TResult Function(String error)? unableToDeleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnableToSave value) unableToSave,
    required TResult Function(ResourceAlreadyPresent value)
        resourceAlreadyPresent,
    required TResult Function(UnableToObtainList value) unableToObtainList,
    required TResult Function(UnableToDeleteAll value) unableToDeleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnableToSave value)? unableToSave,
    TResult Function(ResourceAlreadyPresent value)? resourceAlreadyPresent,
    TResult Function(UnableToObtainList value)? unableToObtainList,
    TResult Function(UnableToDeleteAll value)? unableToDeleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DbFailureCopyWith<DbFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbFailureCopyWith<$Res> {
  factory $DbFailureCopyWith(DbFailure value, $Res Function(DbFailure) then) =
      _$DbFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$DbFailureCopyWithImpl<$Res> implements $DbFailureCopyWith<$Res> {
  _$DbFailureCopyWithImpl(this._value, this._then);

  final DbFailure _value;
  // ignore: unused_field
  final $Res Function(DbFailure) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UnableToSaveCopyWith<$Res> implements $DbFailureCopyWith<$Res> {
  factory $UnableToSaveCopyWith(
          UnableToSave value, $Res Function(UnableToSave) then) =
      _$UnableToSaveCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$UnableToSaveCopyWithImpl<$Res> extends _$DbFailureCopyWithImpl<$Res>
    implements $UnableToSaveCopyWith<$Res> {
  _$UnableToSaveCopyWithImpl(
      UnableToSave _value, $Res Function(UnableToSave) _then)
      : super(_value, (v) => _then(v as UnableToSave));

  @override
  UnableToSave get _value => super._value as UnableToSave;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnableToSave(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$UnableToSave implements UnableToSave {
  const _$UnableToSave({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DbFailure.unableToSave(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnableToSave &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UnableToSaveCopyWith<UnableToSave> get copyWith =>
      _$UnableToSaveCopyWithImpl<UnableToSave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) unableToSave,
    required TResult Function(String error) resourceAlreadyPresent,
    required TResult Function(String error) unableToObtainList,
    required TResult Function(String error) unableToDeleteAll,
  }) {
    return unableToSave(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? unableToSave,
    TResult Function(String error)? resourceAlreadyPresent,
    TResult Function(String error)? unableToObtainList,
    TResult Function(String error)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (unableToSave != null) {
      return unableToSave(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnableToSave value) unableToSave,
    required TResult Function(ResourceAlreadyPresent value)
        resourceAlreadyPresent,
    required TResult Function(UnableToObtainList value) unableToObtainList,
    required TResult Function(UnableToDeleteAll value) unableToDeleteAll,
  }) {
    return unableToSave(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnableToSave value)? unableToSave,
    TResult Function(ResourceAlreadyPresent value)? resourceAlreadyPresent,
    TResult Function(UnableToObtainList value)? unableToObtainList,
    TResult Function(UnableToDeleteAll value)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (unableToSave != null) {
      return unableToSave(this);
    }
    return orElse();
  }
}

abstract class UnableToSave implements DbFailure {
  const factory UnableToSave({required String error}) = _$UnableToSave;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UnableToSaveCopyWith<UnableToSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceAlreadyPresentCopyWith<$Res>
    implements $DbFailureCopyWith<$Res> {
  factory $ResourceAlreadyPresentCopyWith(ResourceAlreadyPresent value,
          $Res Function(ResourceAlreadyPresent) then) =
      _$ResourceAlreadyPresentCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$ResourceAlreadyPresentCopyWithImpl<$Res>
    extends _$DbFailureCopyWithImpl<$Res>
    implements $ResourceAlreadyPresentCopyWith<$Res> {
  _$ResourceAlreadyPresentCopyWithImpl(ResourceAlreadyPresent _value,
      $Res Function(ResourceAlreadyPresent) _then)
      : super(_value, (v) => _then(v as ResourceAlreadyPresent));

  @override
  ResourceAlreadyPresent get _value => super._value as ResourceAlreadyPresent;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ResourceAlreadyPresent(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ResourceAlreadyPresent implements ResourceAlreadyPresent {
  const _$ResourceAlreadyPresent(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DbFailure.resourceAlreadyPresent(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourceAlreadyPresent &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ResourceAlreadyPresentCopyWith<ResourceAlreadyPresent> get copyWith =>
      _$ResourceAlreadyPresentCopyWithImpl<ResourceAlreadyPresent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) unableToSave,
    required TResult Function(String error) resourceAlreadyPresent,
    required TResult Function(String error) unableToObtainList,
    required TResult Function(String error) unableToDeleteAll,
  }) {
    return resourceAlreadyPresent(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? unableToSave,
    TResult Function(String error)? resourceAlreadyPresent,
    TResult Function(String error)? unableToObtainList,
    TResult Function(String error)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (resourceAlreadyPresent != null) {
      return resourceAlreadyPresent(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnableToSave value) unableToSave,
    required TResult Function(ResourceAlreadyPresent value)
        resourceAlreadyPresent,
    required TResult Function(UnableToObtainList value) unableToObtainList,
    required TResult Function(UnableToDeleteAll value) unableToDeleteAll,
  }) {
    return resourceAlreadyPresent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnableToSave value)? unableToSave,
    TResult Function(ResourceAlreadyPresent value)? resourceAlreadyPresent,
    TResult Function(UnableToObtainList value)? unableToObtainList,
    TResult Function(UnableToDeleteAll value)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (resourceAlreadyPresent != null) {
      return resourceAlreadyPresent(this);
    }
    return orElse();
  }
}

abstract class ResourceAlreadyPresent implements DbFailure {
  const factory ResourceAlreadyPresent(String error) = _$ResourceAlreadyPresent;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResourceAlreadyPresentCopyWith<ResourceAlreadyPresent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnableToObtainListCopyWith<$Res>
    implements $DbFailureCopyWith<$Res> {
  factory $UnableToObtainListCopyWith(
          UnableToObtainList value, $Res Function(UnableToObtainList) then) =
      _$UnableToObtainListCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$UnableToObtainListCopyWithImpl<$Res>
    extends _$DbFailureCopyWithImpl<$Res>
    implements $UnableToObtainListCopyWith<$Res> {
  _$UnableToObtainListCopyWithImpl(
      UnableToObtainList _value, $Res Function(UnableToObtainList) _then)
      : super(_value, (v) => _then(v as UnableToObtainList));

  @override
  UnableToObtainList get _value => super._value as UnableToObtainList;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnableToObtainList(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$UnableToObtainList implements UnableToObtainList {
  const _$UnableToObtainList({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DbFailure.unableToObtainList(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnableToObtainList &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UnableToObtainListCopyWith<UnableToObtainList> get copyWith =>
      _$UnableToObtainListCopyWithImpl<UnableToObtainList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) unableToSave,
    required TResult Function(String error) resourceAlreadyPresent,
    required TResult Function(String error) unableToObtainList,
    required TResult Function(String error) unableToDeleteAll,
  }) {
    return unableToObtainList(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? unableToSave,
    TResult Function(String error)? resourceAlreadyPresent,
    TResult Function(String error)? unableToObtainList,
    TResult Function(String error)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (unableToObtainList != null) {
      return unableToObtainList(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnableToSave value) unableToSave,
    required TResult Function(ResourceAlreadyPresent value)
        resourceAlreadyPresent,
    required TResult Function(UnableToObtainList value) unableToObtainList,
    required TResult Function(UnableToDeleteAll value) unableToDeleteAll,
  }) {
    return unableToObtainList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnableToSave value)? unableToSave,
    TResult Function(ResourceAlreadyPresent value)? resourceAlreadyPresent,
    TResult Function(UnableToObtainList value)? unableToObtainList,
    TResult Function(UnableToDeleteAll value)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (unableToObtainList != null) {
      return unableToObtainList(this);
    }
    return orElse();
  }
}

abstract class UnableToObtainList implements DbFailure {
  const factory UnableToObtainList({required String error}) =
      _$UnableToObtainList;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UnableToObtainListCopyWith<UnableToObtainList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnableToDeleteAllCopyWith<$Res>
    implements $DbFailureCopyWith<$Res> {
  factory $UnableToDeleteAllCopyWith(
          UnableToDeleteAll value, $Res Function(UnableToDeleteAll) then) =
      _$UnableToDeleteAllCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$UnableToDeleteAllCopyWithImpl<$Res>
    extends _$DbFailureCopyWithImpl<$Res>
    implements $UnableToDeleteAllCopyWith<$Res> {
  _$UnableToDeleteAllCopyWithImpl(
      UnableToDeleteAll _value, $Res Function(UnableToDeleteAll) _then)
      : super(_value, (v) => _then(v as UnableToDeleteAll));

  @override
  UnableToDeleteAll get _value => super._value as UnableToDeleteAll;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnableToDeleteAll(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$UnableToDeleteAll implements UnableToDeleteAll {
  const _$UnableToDeleteAll({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DbFailure.unableToDeleteAll(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnableToDeleteAll &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UnableToDeleteAllCopyWith<UnableToDeleteAll> get copyWith =>
      _$UnableToDeleteAllCopyWithImpl<UnableToDeleteAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) unableToSave,
    required TResult Function(String error) resourceAlreadyPresent,
    required TResult Function(String error) unableToObtainList,
    required TResult Function(String error) unableToDeleteAll,
  }) {
    return unableToDeleteAll(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? unableToSave,
    TResult Function(String error)? resourceAlreadyPresent,
    TResult Function(String error)? unableToObtainList,
    TResult Function(String error)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (unableToDeleteAll != null) {
      return unableToDeleteAll(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnableToSave value) unableToSave,
    required TResult Function(ResourceAlreadyPresent value)
        resourceAlreadyPresent,
    required TResult Function(UnableToObtainList value) unableToObtainList,
    required TResult Function(UnableToDeleteAll value) unableToDeleteAll,
  }) {
    return unableToDeleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnableToSave value)? unableToSave,
    TResult Function(ResourceAlreadyPresent value)? resourceAlreadyPresent,
    TResult Function(UnableToObtainList value)? unableToObtainList,
    TResult Function(UnableToDeleteAll value)? unableToDeleteAll,
    required TResult orElse(),
  }) {
    if (unableToDeleteAll != null) {
      return unableToDeleteAll(this);
    }
    return orElse();
  }
}

abstract class UnableToDeleteAll implements DbFailure {
  const factory UnableToDeleteAll({required String error}) =
      _$UnableToDeleteAll;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UnableToDeleteAllCopyWith<UnableToDeleteAll> get copyWith =>
      throw _privateConstructorUsedError;
}
