import 'package:fhir/primitive_types/primitive_types.dart';

String basicEnumToString(dynamic thisEnum) =>
    thisEnum.toString().replaceFirst('${thisEnum.runtimeType}.', '');

String simpleDate(Date date) =>
    date == null ? '' : date.toString().substring(0, 10);

String simpleDateTime(DateTime date) => date.toString().substring(0, 10);

String simpleFhirDateTime(FhirDateTime date) =>
    date.toString().substring(0, 10);
