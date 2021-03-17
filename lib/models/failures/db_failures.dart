import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_failures.freezed.dart';

@freezed
class DbFailure with _$DbFailure {
  const factory DbFailure.unableToSave({required String error}) = UnableToSave;
  const factory DbFailure.resourceAlreadyPresent(String error) =
      ResourceAlreadyPresent;
  const factory DbFailure.unableToObtainList({required String error}) =
      UnableToObtainList;
  const factory DbFailure.unableToDeleteAll({required String error}) =
      UnableToDeleteAll;
}
