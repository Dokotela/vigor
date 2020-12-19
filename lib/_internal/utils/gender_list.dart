import 'package:get/get.dart';
import '../../localization.dart';

List<String> genderList() {
  final labels = AppLocalizations.of(Get.context);
  return <String>[
    labels.gender.female,
    labels.gender.male,
  ];
}

String genderLabelToString(String label) {
  final labels = AppLocalizations.of(Get.context);
  final labelToString = {
    labels.gender.female: 'female',
    labels.gender.male: 'male',
  };
  return labelToString[label];
}

String genderStringToLabel(String string) {
  final labels = AppLocalizations.of(Get.context);
  final stringToLabel = {
    'female': labels.gender.female,
    'male': labels.gender.male,
  };
  return stringToLabel[string];
}
