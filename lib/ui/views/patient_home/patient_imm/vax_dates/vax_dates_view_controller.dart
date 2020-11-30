import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';

import '../../../../../_internal/utils/utils.dart';

class VaxDatesViewController extends GetxController {
  /// PROPERTIES
  final text = ''.obs;
  final dz = ''.obs;
  final dateList = <FhirDateTime>[].obs;
  final deleteList = <bool>[].obs;
  final _newDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day + 1,
  ).obs;

  /// INIT
  @override
  void onInit() {
    text.value = Get.arguments[0];
    dz.value = Get.arguments[1];
    super.onInit();
  }

  /// GETTER FUNCTIONS
  DateTime get currentDate => _newDate.value;
  String get dateString => dateFromDateTime(_newDate.value);

  /// SETTER FUNCTIONS
  set setList(Set<FhirDateTime> dates) {
    if (dates.isNotEmpty) {
      dateList.value = dates.toList();
      deleteList.value = List.filled(dateList.length, false, growable: true);
    }
  }

  /// EVENTS
  void delete(int which) => deleteList[which] = deleteList[which] == false;

  void recordNew(DateTime newDate) {
    _newDate.value = newDate;
    if (!dateList.contains(FhirDateTime(dateFromDateTime(newDate)))) {
      dateList.add(FhirDateTime(dateFromDateTime(newDate)));
      deleteList.add(false);
    }
  }
}
