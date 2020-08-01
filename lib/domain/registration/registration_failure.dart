import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_failure.freezed.dart';

@freezed
abstract class RegistrationFailure with _$RegistrationFailure {
  const factory RegistrationFailure.shortRegistrationName() =
      ShortRegistrationName;
  const factory RegistrationFailure.noBirthDate() = NoBirthDate;
  const factory RegistrationFailure.noNeighborhood() = NoNeighborhood;
  const factory RegistrationFailure.noRelation() = NoRelation;
}
