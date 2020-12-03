import 'package:get/get.dart';
import '../../localization.dart';

List<String> relationshipTypes() {
  final labels = AppLocalizations.of(Get.context);
  return <String>[
    labels.general.relation.mother,
    labels.general.relation.grandmother,
    labels.general.relation.aunt,
    labels.general.relation.sister,
    labels.general.relation.daughter,
    labels.general.relation.niece,
    labels.general.relation.father,
    labels.general.relation.grandfather,
    labels.general.relation.uncle,
    labels.general.relation.brother,
    labels.general.relation.son,
    labels.general.relation.nephew,
    labels.general.relation.other,
  ];
}

String relationshipLabelToString(String label) {
  final labels = AppLocalizations.of(Get.context);
  final labelToString = {
    labels.general.relation.mother: 'mother',
    labels.general.relation.grandmother: 'grandmother',
    labels.general.relation.aunt: 'aunt',
    labels.general.relation.sister: 'sister',
    labels.general.relation.daughter: 'daughter',
    labels.general.relation.niece: 'niece',
    labels.general.relation.father: 'father',
    labels.general.relation.grandfather: 'grandfather',
    labels.general.relation.uncle: 'uncle',
    labels.general.relation.brother: 'brother',
    labels.general.relation.son: 'son',
    labels.general.relation.nephew: 'nephew',
    labels.general.relation.other: 'other',
  };
  return labelToString[label];
}

String relationshipStringToLabel(String string) {
  final labels = AppLocalizations.of(Get.context);
  final stringToLabel = {
    'mother': labels.general.relation.mother,
    'grandmother': labels.general.relation.grandmother,
    'aunt': labels.general.relation.aunt,
    'sister': labels.general.relation.sister,
    'daughter': labels.general.relation.daughter,
    'niece': labels.general.relation.niece,
    'father': labels.general.relation.father,
    'grandfather': labels.general.relation.grandfather,
    'uncle': labels.general.relation.uncle,
    'brother': labels.general.relation.brother,
    'son': labels.general.relation.son,
    'nephew': labels.general.relation.nephew,
    'other': labels.general.relation.other,
  };
  return stringToLabel[string];
}
