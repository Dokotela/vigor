import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_failures.freezed.dart';

@freezed
abstract class DbFailure with _$DbFailure {
  const factory DbFailure.unableToSave() = UnableToSave;
  const factory DbFailure.resourceAlreadyPresent() = ResourceAlreadyPresent;
}
