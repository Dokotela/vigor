import 'package:fhir/r4.dart';

import '../../ui/views/new_patient/widgets/names.dart';

String lastCommaGivenName(List<HumanName>? names) {
  // if (NamesInputWidget == null) {
  // return '';
  final name = names?[0];
  String nameString = '${name?.family ?? ''},';
  if (name?.given != null) {
    for (final givenName in name!.given!) {
      nameString += ' $givenName';
    }
  }
  return nameString;
}

String givenLastName(HumanName? name) {
  String nameString = '';
  if (name?.given != null) {
    for (final givenName in name!.given!) {
      nameString += '$givenName ';
    }
  }
  nameString += "${name?.family ?? ''}";
  return nameString;
}
