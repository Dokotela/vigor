// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactRegistrationEventTearOff {
  const _$ContactRegistrationEventTearOff();

// ignore: unused_element
  AddContacts addContacts() {
    return const AddContacts();
  }

// ignore: unused_element
  UpdateContacts updateContacts() {
    return const UpdateContacts();
  }
}

// ignore: unused_element
const $ContactRegistrationEvent = _$ContactRegistrationEventTearOff();

mixin _$ContactRegistrationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addContacts(),
    @required Result updateContacts(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addContacts(),
    Result updateContacts(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addContacts(AddContacts value),
    @required Result updateContacts(UpdateContacts value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addContacts(AddContacts value),
    Result updateContacts(UpdateContacts value),
    @required Result orElse(),
  });
}

abstract class $ContactRegistrationEventCopyWith<$Res> {
  factory $ContactRegistrationEventCopyWith(ContactRegistrationEvent value,
          $Res Function(ContactRegistrationEvent) then) =
      _$ContactRegistrationEventCopyWithImpl<$Res>;
}

class _$ContactRegistrationEventCopyWithImpl<$Res>
    implements $ContactRegistrationEventCopyWith<$Res> {
  _$ContactRegistrationEventCopyWithImpl(this._value, this._then);

  final ContactRegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(ContactRegistrationEvent) _then;
}

abstract class $AddContactsCopyWith<$Res> {
  factory $AddContactsCopyWith(
          AddContacts value, $Res Function(AddContacts) then) =
      _$AddContactsCopyWithImpl<$Res>;
}

class _$AddContactsCopyWithImpl<$Res>
    extends _$ContactRegistrationEventCopyWithImpl<$Res>
    implements $AddContactsCopyWith<$Res> {
  _$AddContactsCopyWithImpl(
      AddContacts _value, $Res Function(AddContacts) _then)
      : super(_value, (v) => _then(v as AddContacts));

  @override
  AddContacts get _value => super._value as AddContacts;
}

class _$AddContacts implements AddContacts {
  const _$AddContacts();

  @override
  String toString() {
    return 'ContactRegistrationEvent.addContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addContacts(),
    @required Result updateContacts(),
  }) {
    assert(addContacts != null);
    assert(updateContacts != null);
    return addContacts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addContacts(),
    Result updateContacts(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addContacts != null) {
      return addContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addContacts(AddContacts value),
    @required Result updateContacts(UpdateContacts value),
  }) {
    assert(addContacts != null);
    assert(updateContacts != null);
    return addContacts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addContacts(AddContacts value),
    Result updateContacts(UpdateContacts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addContacts != null) {
      return addContacts(this);
    }
    return orElse();
  }
}

abstract class AddContacts implements ContactRegistrationEvent {
  const factory AddContacts() = _$AddContacts;
}

abstract class $UpdateContactsCopyWith<$Res> {
  factory $UpdateContactsCopyWith(
          UpdateContacts value, $Res Function(UpdateContacts) then) =
      _$UpdateContactsCopyWithImpl<$Res>;
}

class _$UpdateContactsCopyWithImpl<$Res>
    extends _$ContactRegistrationEventCopyWithImpl<$Res>
    implements $UpdateContactsCopyWith<$Res> {
  _$UpdateContactsCopyWithImpl(
      UpdateContacts _value, $Res Function(UpdateContacts) _then)
      : super(_value, (v) => _then(v as UpdateContacts));

  @override
  UpdateContacts get _value => super._value as UpdateContacts;
}

class _$UpdateContacts implements UpdateContacts {
  const _$UpdateContacts();

  @override
  String toString() {
    return 'ContactRegistrationEvent.updateContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addContacts(),
    @required Result updateContacts(),
  }) {
    assert(addContacts != null);
    assert(updateContacts != null);
    return updateContacts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addContacts(),
    Result updateContacts(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateContacts != null) {
      return updateContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addContacts(AddContacts value),
    @required Result updateContacts(UpdateContacts value),
  }) {
    assert(addContacts != null);
    assert(updateContacts != null);
    return updateContacts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addContacts(AddContacts value),
    Result updateContacts(UpdateContacts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateContacts != null) {
      return updateContacts(this);
    }
    return orElse();
  }
}

abstract class UpdateContacts implements ContactRegistrationEvent {
  const factory UpdateContacts() = _$UpdateContacts;
}

class _$ContactRegistrationStateTearOff {
  const _$ContactRegistrationStateTearOff();

// ignore: unused_element
  _ContactRegistrationState call(
      {Patient currentPatient,
      @required
          RegistrationName family1,
      @required
          RegistrationName given1,
      @required
          String relationship1,
      String neighborhood1,
      RegistrationName family2,
      RegistrationName given2,
      String relationship2,
      String neighborhood2,
      RegistrationName family3,
      RegistrationName given3,
      String relationship3,
      String neighborhood3,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<RegistrationFailure, Unit>>
              registrationFailureOrSuccessOption}) {
    return _ContactRegistrationState(
      currentPatient: currentPatient,
      family1: family1,
      given1: given1,
      relationship1: relationship1,
      neighborhood1: neighborhood1,
      family2: family2,
      given2: given2,
      relationship2: relationship2,
      neighborhood2: neighborhood2,
      family3: family3,
      given3: given3,
      relationship3: relationship3,
      neighborhood3: neighborhood3,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      registrationFailureOrSuccessOption: registrationFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ContactRegistrationState = _$ContactRegistrationStateTearOff();

mixin _$ContactRegistrationState {
  Patient get currentPatient;
  RegistrationName get family1;
  RegistrationName get given1;
  String get relationship1;
  String get neighborhood1;
  RegistrationName get family2;
  RegistrationName get given2;
  String get relationship2;
  String get neighborhood2;
  RegistrationName get family3;
  RegistrationName get given3;
  String get relationship3;
  String get neighborhood3;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<RegistrationFailure, Unit>>
      get registrationFailureOrSuccessOption;

  $ContactRegistrationStateCopyWith<ContactRegistrationState> get copyWith;
}

abstract class $ContactRegistrationStateCopyWith<$Res> {
  factory $ContactRegistrationStateCopyWith(ContactRegistrationState value,
          $Res Function(ContactRegistrationState) then) =
      _$ContactRegistrationStateCopyWithImpl<$Res>;
  $Res call(
      {Patient currentPatient,
      RegistrationName family1,
      RegistrationName given1,
      String relationship1,
      String neighborhood1,
      RegistrationName family2,
      RegistrationName given2,
      String relationship2,
      String neighborhood2,
      RegistrationName family3,
      RegistrationName given3,
      String relationship3,
      String neighborhood3,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<RegistrationFailure, Unit>>
          registrationFailureOrSuccessOption});

  $PatientCopyWith<$Res> get currentPatient;
}

class _$ContactRegistrationStateCopyWithImpl<$Res>
    implements $ContactRegistrationStateCopyWith<$Res> {
  _$ContactRegistrationStateCopyWithImpl(this._value, this._then);

  final ContactRegistrationState _value;
  // ignore: unused_field
  final $Res Function(ContactRegistrationState) _then;

  @override
  $Res call({
    Object currentPatient = freezed,
    Object family1 = freezed,
    Object given1 = freezed,
    Object relationship1 = freezed,
    Object neighborhood1 = freezed,
    Object family2 = freezed,
    Object given2 = freezed,
    Object relationship2 = freezed,
    Object neighborhood2 = freezed,
    Object family3 = freezed,
    Object given3 = freezed,
    Object relationship3 = freezed,
    Object neighborhood3 = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object registrationFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      currentPatient: currentPatient == freezed
          ? _value.currentPatient
          : currentPatient as Patient,
      family1:
          family1 == freezed ? _value.family1 : family1 as RegistrationName,
      given1: given1 == freezed ? _value.given1 : given1 as RegistrationName,
      relationship1: relationship1 == freezed
          ? _value.relationship1
          : relationship1 as String,
      neighborhood1: neighborhood1 == freezed
          ? _value.neighborhood1
          : neighborhood1 as String,
      family2:
          family2 == freezed ? _value.family2 : family2 as RegistrationName,
      given2: given2 == freezed ? _value.given2 : given2 as RegistrationName,
      relationship2: relationship2 == freezed
          ? _value.relationship2
          : relationship2 as String,
      neighborhood2: neighborhood2 == freezed
          ? _value.neighborhood2
          : neighborhood2 as String,
      family3:
          family3 == freezed ? _value.family3 : family3 as RegistrationName,
      given3: given3 == freezed ? _value.given3 : given3 as RegistrationName,
      relationship3: relationship3 == freezed
          ? _value.relationship3
          : relationship3 as String,
      neighborhood3: neighborhood3 == freezed
          ? _value.neighborhood3
          : neighborhood3 as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      registrationFailureOrSuccessOption:
          registrationFailureOrSuccessOption == freezed
              ? _value.registrationFailureOrSuccessOption
              : registrationFailureOrSuccessOption
                  as Option<Either<RegistrationFailure, Unit>>,
    ));
  }

  @override
  $PatientCopyWith<$Res> get currentPatient {
    if (_value.currentPatient == null) {
      return null;
    }
    return $PatientCopyWith<$Res>(_value.currentPatient, (value) {
      return _then(_value.copyWith(currentPatient: value));
    });
  }
}

abstract class _$ContactRegistrationStateCopyWith<$Res>
    implements $ContactRegistrationStateCopyWith<$Res> {
  factory _$ContactRegistrationStateCopyWith(_ContactRegistrationState value,
          $Res Function(_ContactRegistrationState) then) =
      __$ContactRegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Patient currentPatient,
      RegistrationName family1,
      RegistrationName given1,
      String relationship1,
      String neighborhood1,
      RegistrationName family2,
      RegistrationName given2,
      String relationship2,
      String neighborhood2,
      RegistrationName family3,
      RegistrationName given3,
      String relationship3,
      String neighborhood3,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<RegistrationFailure, Unit>>
          registrationFailureOrSuccessOption});

  @override
  $PatientCopyWith<$Res> get currentPatient;
}

class __$ContactRegistrationStateCopyWithImpl<$Res>
    extends _$ContactRegistrationStateCopyWithImpl<$Res>
    implements _$ContactRegistrationStateCopyWith<$Res> {
  __$ContactRegistrationStateCopyWithImpl(_ContactRegistrationState _value,
      $Res Function(_ContactRegistrationState) _then)
      : super(_value, (v) => _then(v as _ContactRegistrationState));

  @override
  _ContactRegistrationState get _value =>
      super._value as _ContactRegistrationState;

  @override
  $Res call({
    Object currentPatient = freezed,
    Object family1 = freezed,
    Object given1 = freezed,
    Object relationship1 = freezed,
    Object neighborhood1 = freezed,
    Object family2 = freezed,
    Object given2 = freezed,
    Object relationship2 = freezed,
    Object neighborhood2 = freezed,
    Object family3 = freezed,
    Object given3 = freezed,
    Object relationship3 = freezed,
    Object neighborhood3 = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object registrationFailureOrSuccessOption = freezed,
  }) {
    return _then(_ContactRegistrationState(
      currentPatient: currentPatient == freezed
          ? _value.currentPatient
          : currentPatient as Patient,
      family1:
          family1 == freezed ? _value.family1 : family1 as RegistrationName,
      given1: given1 == freezed ? _value.given1 : given1 as RegistrationName,
      relationship1: relationship1 == freezed
          ? _value.relationship1
          : relationship1 as String,
      neighborhood1: neighborhood1 == freezed
          ? _value.neighborhood1
          : neighborhood1 as String,
      family2:
          family2 == freezed ? _value.family2 : family2 as RegistrationName,
      given2: given2 == freezed ? _value.given2 : given2 as RegistrationName,
      relationship2: relationship2 == freezed
          ? _value.relationship2
          : relationship2 as String,
      neighborhood2: neighborhood2 == freezed
          ? _value.neighborhood2
          : neighborhood2 as String,
      family3:
          family3 == freezed ? _value.family3 : family3 as RegistrationName,
      given3: given3 == freezed ? _value.given3 : given3 as RegistrationName,
      relationship3: relationship3 == freezed
          ? _value.relationship3
          : relationship3 as String,
      neighborhood3: neighborhood3 == freezed
          ? _value.neighborhood3
          : neighborhood3 as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      registrationFailureOrSuccessOption:
          registrationFailureOrSuccessOption == freezed
              ? _value.registrationFailureOrSuccessOption
              : registrationFailureOrSuccessOption
                  as Option<Either<RegistrationFailure, Unit>>,
    ));
  }
}

class _$_ContactRegistrationState implements _ContactRegistrationState {
  const _$_ContactRegistrationState(
      {this.currentPatient,
      @required this.family1,
      @required this.given1,
      @required this.relationship1,
      this.neighborhood1,
      this.family2,
      this.given2,
      this.relationship2,
      this.neighborhood2,
      this.family3,
      this.given3,
      this.relationship3,
      this.neighborhood3,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.registrationFailureOrSuccessOption})
      : assert(family1 != null),
        assert(given1 != null),
        assert(relationship1 != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(registrationFailureOrSuccessOption != null);

  @override
  final Patient currentPatient;
  @override
  final RegistrationName family1;
  @override
  final RegistrationName given1;
  @override
  final String relationship1;
  @override
  final String neighborhood1;
  @override
  final RegistrationName family2;
  @override
  final RegistrationName given2;
  @override
  final String relationship2;
  @override
  final String neighborhood2;
  @override
  final RegistrationName family3;
  @override
  final RegistrationName given3;
  @override
  final String relationship3;
  @override
  final String neighborhood3;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<RegistrationFailure, Unit>>
      registrationFailureOrSuccessOption;

  @override
  String toString() {
    return 'ContactRegistrationState(currentPatient: $currentPatient, family1: $family1, given1: $given1, relationship1: $relationship1, neighborhood1: $neighborhood1, family2: $family2, given2: $given2, relationship2: $relationship2, neighborhood2: $neighborhood2, family3: $family3, given3: $given3, relationship3: $relationship3, neighborhood3: $neighborhood3, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, registrationFailureOrSuccessOption: $registrationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactRegistrationState &&
            (identical(other.currentPatient, currentPatient) ||
                const DeepCollectionEquality()
                    .equals(other.currentPatient, currentPatient)) &&
            (identical(other.family1, family1) ||
                const DeepCollectionEquality()
                    .equals(other.family1, family1)) &&
            (identical(other.given1, given1) ||
                const DeepCollectionEquality().equals(other.given1, given1)) &&
            (identical(other.relationship1, relationship1) ||
                const DeepCollectionEquality()
                    .equals(other.relationship1, relationship1)) &&
            (identical(other.neighborhood1, neighborhood1) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood1, neighborhood1)) &&
            (identical(other.family2, family2) ||
                const DeepCollectionEquality()
                    .equals(other.family2, family2)) &&
            (identical(other.given2, given2) ||
                const DeepCollectionEquality().equals(other.given2, given2)) &&
            (identical(other.relationship2, relationship2) ||
                const DeepCollectionEquality()
                    .equals(other.relationship2, relationship2)) &&
            (identical(other.neighborhood2, neighborhood2) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood2, neighborhood2)) &&
            (identical(other.family3, family3) ||
                const DeepCollectionEquality()
                    .equals(other.family3, family3)) &&
            (identical(other.given3, given3) ||
                const DeepCollectionEquality().equals(other.given3, given3)) &&
            (identical(other.relationship3, relationship3) ||
                const DeepCollectionEquality()
                    .equals(other.relationship3, relationship3)) &&
            (identical(other.neighborhood3, neighborhood3) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood3, neighborhood3)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.registrationFailureOrSuccessOption,
                    registrationFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.registrationFailureOrSuccessOption,
                    registrationFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPatient) ^
      const DeepCollectionEquality().hash(family1) ^
      const DeepCollectionEquality().hash(given1) ^
      const DeepCollectionEquality().hash(relationship1) ^
      const DeepCollectionEquality().hash(neighborhood1) ^
      const DeepCollectionEquality().hash(family2) ^
      const DeepCollectionEquality().hash(given2) ^
      const DeepCollectionEquality().hash(relationship2) ^
      const DeepCollectionEquality().hash(neighborhood2) ^
      const DeepCollectionEquality().hash(family3) ^
      const DeepCollectionEquality().hash(given3) ^
      const DeepCollectionEquality().hash(relationship3) ^
      const DeepCollectionEquality().hash(neighborhood3) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(registrationFailureOrSuccessOption);

  @override
  _$ContactRegistrationStateCopyWith<_ContactRegistrationState> get copyWith =>
      __$ContactRegistrationStateCopyWithImpl<_ContactRegistrationState>(
          this, _$identity);
}

abstract class _ContactRegistrationState implements ContactRegistrationState {
  const factory _ContactRegistrationState(
          {Patient currentPatient,
          @required
              RegistrationName family1,
          @required
              RegistrationName given1,
          @required
              String relationship1,
          String neighborhood1,
          RegistrationName family2,
          RegistrationName given2,
          String relationship2,
          String neighborhood2,
          RegistrationName family3,
          RegistrationName given3,
          String relationship3,
          String neighborhood3,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<RegistrationFailure, Unit>>
                  registrationFailureOrSuccessOption}) =
      _$_ContactRegistrationState;

  @override
  Patient get currentPatient;
  @override
  RegistrationName get family1;
  @override
  RegistrationName get given1;
  @override
  String get relationship1;
  @override
  String get neighborhood1;
  @override
  RegistrationName get family2;
  @override
  RegistrationName get given2;
  @override
  String get relationship2;
  @override
  String get neighborhood2;
  @override
  RegistrationName get family3;
  @override
  RegistrationName get given3;
  @override
  String get relationship3;
  @override
  String get neighborhood3;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<RegistrationFailure, Unit>>
      get registrationFailureOrSuccessOption;
  @override
  _$ContactRegistrationStateCopyWith<_ContactRegistrationState> get copyWith;
}
