import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_failure.freezed.dart';

@freezed
abstract class RegistrationFailure with _$RegistrationFailure {
  const factory RegistrationFailure.unableToWriteDB() = UnableToWriteDB;
  const factory RegistrationFailure.matchesAlreadyRegistered() =
      MatchesAlreadyRegistered;
}
