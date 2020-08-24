import 'package:fhir/fhir_r4.dart';

String lastCommaGivenName(Patient patient) {
  if (patient.name == null) {
    return '';
  } else {
    final name = patient.name[0];
    String nameString = '${name?.family ?? ''},';
    if (name?.given != null) {
      for (final givenName in name.given) {
        nameString += ' $givenName';
      }
    }
    return nameString;
  }
}

String givenLastName(HumanName name) {
  String nameString = '';
  if (name.given != null) {
    for (final givenName in name.given) {
      nameString += '$givenName ';
    }
  }
  nameString += '${name.family}';
  return nameString;
}
