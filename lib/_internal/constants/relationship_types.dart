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
  ];
}

Map<String, String> relationshipMap() {
  final labels = AppLocalizations.of(Get.context);
  return {
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
  };
}
