import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/3_domain/models/db_failures.dart';

abstract class ISaveToDb {
  Future<Either<DbFailure, Unit>> saveToDb({
    @required Resource resource,
  });
}
