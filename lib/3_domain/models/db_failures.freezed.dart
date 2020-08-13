// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'db_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DbFailureTearOff {
  const _$DbFailureTearOff();

// ignore: unused_element
  UnableToSave unableToSave({String error}) {
    return UnableToSave(
      error: error,
    );
  }

// ignore: unused_element
  ResourceAlreadyPresent resourceAlreadyPresent(String error) {
    return ResourceAlreadyPresent(
      error,
    );
  }

// ignore: unused_element
  UnableToObtainList unableToObtainList({String error}) {
    return UnableToObtainList(
      error: error,
    );
  }
}

// ignore: unused_element
const $DbFailure = _$DbFailureTearOff();

mixin _$DbFailure {
  String get error;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(String error),
    @required Result resourceAlreadyPresent(String error),
    @required Result unableToObtainList(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(String error),
    Result resourceAlreadyPresent(String error),
    Result unableToObtainList(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    @required Result unableToObtainList(UnableToObtainList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    Result unableToObtainList(UnableToObtainList value),
    @required Result orElse(),
  });

  $DbFailureCopyWith<DbFailure> get copyWith;
}

abstract class $DbFailureCopyWith<$Res> {
  factory $DbFailureCopyWith(DbFailure value, $Res Function(DbFailure) then) =
      _$DbFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$DbFailureCopyWithImpl<$Res> implements $DbFailureCopyWith<$Res> {
  _$DbFailureCopyWithImpl(this._value, this._then);

  final DbFailure _value;
  // ignore: unused_field
  final $Res Function(DbFailure) _then;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

abstract class $UnableToSaveCopyWith<$Res> implements $DbFailureCopyWith<$Res> {
  factory $UnableToSaveCopyWith(
          UnableToSave value, $Res Function(UnableToSave) then) =
      _$UnableToSaveCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

class _$UnableToSaveCopyWithImpl<$Res> extends _$DbFailureCopyWithImpl<$Res>
    implements $UnableToSaveCopyWith<$Res> {
  _$UnableToSaveCopyWithImpl(
      UnableToSave _value, $Res Function(UnableToSave) _then)
      : super(_value, (v) => _then(v as UnableToSave));

  @override
  UnableToSave get _value => super._value as UnableToSave;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UnableToSave(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$UnableToSave implements UnableToSave {
  const _$UnableToSave({this.error});

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

  @override
  $UnableToSaveCopyWith<UnableToSave> get copyWith =>
      _$UnableToSaveCopyWithImpl<UnableToSave>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(String error),
    @required Result resourceAlreadyPresent(String error),
    @required Result unableToObtainList(String error),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    assert(unableToObtainList != null);
    return unableToSave(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(String error),
    Result resourceAlreadyPresent(String error),
    Result unableToObtainList(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSave != null) {
      return unableToSave(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    @required Result unableToObtainList(UnableToObtainList value),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    assert(unableToObtainList != null);
    return unableToSave(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    Result unableToObtainList(UnableToObtainList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSave != null) {
      return unableToSave(this);
    }
    return orElse();
  }
}

abstract class UnableToSave implements DbFailure {
  const factory UnableToSave({String error}) = _$UnableToSave;

  @override
  String get error;
  @override
  $UnableToSaveCopyWith<UnableToSave> get copyWith;
}

abstract class $ResourceAlreadyPresentCopyWith<$Res>
    implements $DbFailureCopyWith<$Res> {
  factory $ResourceAlreadyPresentCopyWith(ResourceAlreadyPresent value,
          $Res Function(ResourceAlreadyPresent) then) =
      _$ResourceAlreadyPresentCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(ResourceAlreadyPresent(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$ResourceAlreadyPresent implements ResourceAlreadyPresent {
  const _$ResourceAlreadyPresent(this.error) : assert(error != null);

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

  @override
  $ResourceAlreadyPresentCopyWith<ResourceAlreadyPresent> get copyWith =>
      _$ResourceAlreadyPresentCopyWithImpl<ResourceAlreadyPresent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(String error),
    @required Result resourceAlreadyPresent(String error),
    @required Result unableToObtainList(String error),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    assert(unableToObtainList != null);
    return resourceAlreadyPresent(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(String error),
    Result resourceAlreadyPresent(String error),
    Result unableToObtainList(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resourceAlreadyPresent != null) {
      return resourceAlreadyPresent(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    @required Result unableToObtainList(UnableToObtainList value),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    assert(unableToObtainList != null);
    return resourceAlreadyPresent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    Result unableToObtainList(UnableToObtainList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resourceAlreadyPresent != null) {
      return resourceAlreadyPresent(this);
    }
    return orElse();
  }
}

abstract class ResourceAlreadyPresent implements DbFailure {
  const factory ResourceAlreadyPresent(String error) = _$ResourceAlreadyPresent;

  @override
  String get error;
  @override
  $ResourceAlreadyPresentCopyWith<ResourceAlreadyPresent> get copyWith;
}

abstract class $UnableToObtainListCopyWith<$Res>
    implements $DbFailureCopyWith<$Res> {
  factory $UnableToObtainListCopyWith(
          UnableToObtainList value, $Res Function(UnableToObtainList) then) =
      _$UnableToObtainListCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

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
    Object error = freezed,
  }) {
    return _then(UnableToObtainList(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$UnableToObtainList implements UnableToObtainList {
  const _$UnableToObtainList({this.error});

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

  @override
  $UnableToObtainListCopyWith<UnableToObtainList> get copyWith =>
      _$UnableToObtainListCopyWithImpl<UnableToObtainList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(String error),
    @required Result resourceAlreadyPresent(String error),
    @required Result unableToObtainList(String error),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    assert(unableToObtainList != null);
    return unableToObtainList(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(String error),
    Result resourceAlreadyPresent(String error),
    Result unableToObtainList(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToObtainList != null) {
      return unableToObtainList(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    @required Result unableToObtainList(UnableToObtainList value),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    assert(unableToObtainList != null);
    return unableToObtainList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    Result unableToObtainList(UnableToObtainList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToObtainList != null) {
      return unableToObtainList(this);
    }
    return orElse();
  }
}

abstract class UnableToObtainList implements DbFailure {
  const factory UnableToObtainList({String error}) = _$UnableToObtainList;

  @override
  String get error;
  @override
  $UnableToObtainListCopyWith<UnableToObtainList> get copyWith;
}
