import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_failures.freezed.dart';

@freezed
abstract class DbFailure with _$DbFailure {
  const factory DbFailure.unableToSave({String error}) = UnableToSave;
  const factory DbFailure.resourceAlreadyPresent(String error) =
      ResourceAlreadyPresent;
  const factory DbFailure.unableToObtainList({String error}) =
      UnableToObtainList;
}
