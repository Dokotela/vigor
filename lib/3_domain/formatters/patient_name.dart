import 'package:fhir/fhir_r4.dart';

String lastCommaGivenName(HumanName name) {
  String nameString = '${name.family},';
  for (final givenName in name.given) {
    nameString += ' $givenName';
  }
  return nameString;
}

String givenLastName(HumanName name) {
  String nameString = '';
  for (final givenName in name.given) {
    nameString += '$givenName ';
  }
  nameString += '${name.family}';
  return nameString;
}
