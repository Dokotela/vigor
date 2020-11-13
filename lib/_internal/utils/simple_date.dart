import 'package:fhir/r4.dart';

String simpleDate(Date date) =>
    date == null ? '' : date.toString().substring(0, 10);

String simpleDateTime(Date date) => date.toString().substring(0, 10);

String simpleFhirDateTime(FhirDateTime date) =>
    date.toString().substring(0, 10);
