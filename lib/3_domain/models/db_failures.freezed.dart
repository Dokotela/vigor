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
  UnableToSave unableToSave() {
    return const UnableToSave();
  }

// ignore: unused_element
  ResourceAlreadyPresent resourceAlreadyPresent() {
    return const ResourceAlreadyPresent();
  }
}

// ignore: unused_element
const $DbFailure = _$DbFailureTearOff();

mixin _$DbFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(),
    @required Result resourceAlreadyPresent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(),
    Result resourceAlreadyPresent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
    @required Result orElse(),
  });
}

abstract class $DbFailureCopyWith<$Res> {
  factory $DbFailureCopyWith(DbFailure value, $Res Function(DbFailure) then) =
      _$DbFailureCopyWithImpl<$Res>;
}

class _$DbFailureCopyWithImpl<$Res> implements $DbFailureCopyWith<$Res> {
  _$DbFailureCopyWithImpl(this._value, this._then);

  final DbFailure _value;
  // ignore: unused_field
  final $Res Function(DbFailure) _then;
}

abstract class $UnableToSaveCopyWith<$Res> {
  factory $UnableToSaveCopyWith(
          UnableToSave value, $Res Function(UnableToSave) then) =
      _$UnableToSaveCopyWithImpl<$Res>;
}

class _$UnableToSaveCopyWithImpl<$Res> extends _$DbFailureCopyWithImpl<$Res>
    implements $UnableToSaveCopyWith<$Res> {
  _$UnableToSaveCopyWithImpl(
      UnableToSave _value, $Res Function(UnableToSave) _then)
      : super(_value, (v) => _then(v as UnableToSave));

  @override
  UnableToSave get _value => super._value as UnableToSave;
}

class _$UnableToSave implements UnableToSave {
  const _$UnableToSave();

  @override
  String toString() {
    return 'DbFailure.unableToSave()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToSave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(),
    @required Result resourceAlreadyPresent(),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    return unableToSave();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(),
    Result resourceAlreadyPresent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToSave != null) {
      return unableToSave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    return unableToSave(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
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
  const factory UnableToSave() = _$UnableToSave;
}

abstract class $ResourceAlreadyPresentCopyWith<$Res> {
  factory $ResourceAlreadyPresentCopyWith(ResourceAlreadyPresent value,
          $Res Function(ResourceAlreadyPresent) then) =
      _$ResourceAlreadyPresentCopyWithImpl<$Res>;
}

class _$ResourceAlreadyPresentCopyWithImpl<$Res>
    extends _$DbFailureCopyWithImpl<$Res>
    implements $ResourceAlreadyPresentCopyWith<$Res> {
  _$ResourceAlreadyPresentCopyWithImpl(ResourceAlreadyPresent _value,
      $Res Function(ResourceAlreadyPresent) _then)
      : super(_value, (v) => _then(v as ResourceAlreadyPresent));

  @override
  ResourceAlreadyPresent get _value => super._value as ResourceAlreadyPresent;
}

class _$ResourceAlreadyPresent implements ResourceAlreadyPresent {
  const _$ResourceAlreadyPresent();

  @override
  String toString() {
    return 'DbFailure.resourceAlreadyPresent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResourceAlreadyPresent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unableToSave(),
    @required Result resourceAlreadyPresent(),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    return resourceAlreadyPresent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unableToSave(),
    Result resourceAlreadyPresent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resourceAlreadyPresent != null) {
      return resourceAlreadyPresent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unableToSave(UnableToSave value),
    @required Result resourceAlreadyPresent(ResourceAlreadyPresent value),
  }) {
    assert(unableToSave != null);
    assert(resourceAlreadyPresent != null);
    return resourceAlreadyPresent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unableToSave(UnableToSave value),
    Result resourceAlreadyPresent(ResourceAlreadyPresent value),
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
  const factory ResourceAlreadyPresent() = _$ResourceAlreadyPresent;
}
