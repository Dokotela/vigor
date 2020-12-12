import 'package:get/get.dart';
import '../../localization.dart';

List<String> genderList() {
  final labels = AppLocalizations.of(Get.context);
  return <String>[
    '',
    labels.general.sexAtBirth.female,
    labels.general.sexAtBirth.male,
  ];
}

String genderLabelToString(String label) {
  final labels = AppLocalizations.of(Get.context);
  final labelToString = {
    labels.general.sexAtBirth.female: 'female',
    labels.general.sexAtBirth.male: 'male',
  };
  return labelToString[label];
}

String genderStringToLabel(String string) {
  final labels = AppLocalizations.of(Get.context);
  final stringToLabel = {
    'female': labels.general.sexAtBirth.female,
    'male': labels.general.sexAtBirth.male,
  };
  return stringToLabel[string];
}
