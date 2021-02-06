import 'package:get/get.dart';

import '../../ui/localization.dart';

List<String> relationshipTypes() {
  final labels = AppLocalizations.of(Get.context);
  return <String>[
    labels.relationships.mother,
    labels.relationships.grandmother,
    labels.relationships.aunt,
    labels.relationships.sister,
    labels.relationships.daughter,
    labels.relationships.niece,
    labels.relationships.father,
    labels.relationships.grandfather,
    labels.relationships.uncle,
    labels.relationships.brother,
    labels.relationships.son,
    labels.relationships.nephew,
    labels.relationships.other,
  ];
}

String relationshipLabelToString(String label) {
  final labels = AppLocalizations.of(Get.context);
  final labelToString = {
    labels.relationships.mother: 'mother',
    labels.relationships.grandmother: 'grandmother',
    labels.relationships.aunt: 'aunt',
    labels.relationships.sister: 'sister',
    labels.relationships.daughter: 'daughter',
    labels.relationships.niece: 'niece',
    labels.relationships.father: 'father',
    labels.relationships.grandfather: 'grandfather',
    labels.relationships.uncle: 'uncle',
    labels.relationships.brother: 'brother',
    labels.relationships.son: 'son',
    labels.relationships.nephew: 'nephew',
    labels.relationships.other: 'other',
  };
  return labelToString[label];
}

String relationshipStringToLabel(String string) {
  final labels = AppLocalizations.of(Get.context);
  final stringToLabel = {
    'mother': labels.relationships.mother,
    'grandmother': labels.relationships.grandmother,
    'aunt': labels.relationships.aunt,
    'sister': labels.relationships.sister,
    'daughter': labels.relationships.daughter,
    'niece': labels.relationships.niece,
    'father': labels.relationships.father,
    'grandfather': labels.relationships.grandfather,
    'uncle': labels.relationships.uncle,
    'brother': labels.relationships.brother,
    'son': labels.relationships.son,
    'nephew': labels.relationships.nephew,
    'other': labels.relationships.other,
  };
  return stringToLabel[string];
}
