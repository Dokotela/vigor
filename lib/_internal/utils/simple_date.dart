import 'package:fhir/r4.dart';

String dateFromFhirDate(Date? date) =>
    date == null ? '' : date.toString().substring(0, 10);

String yyMMddFromFhirDate(Date date) => dateFromFhirDate(date).substring(2, 10);

String dateFromFhirDateTime(FhirDateTime date) =>
    date.toString().substring(0, 10);

String dateFromDateTime(DateTime date) => date.toString().substring(0, 10);

DateTime dateTimeFromFhirDateTime(FhirDateTime date) =>
    DateTime.parse(date.toJson());
