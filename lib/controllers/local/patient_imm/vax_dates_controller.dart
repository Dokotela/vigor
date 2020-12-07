import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/dr_vax_cvx_map.dart';
import '../../../_internal/utils/utils.dart';
import '../patient_home/patient_home_controller.dart';

class VaxDatesController extends GetxController {
  /// PROPERTIES
  final PatientHomeController controller = Get.find();
  final _text = ''.obs;
  final _dz = ''.obs;
  final dateList = <FhirDateTime>[].obs;
  final deleteList = <FhirDateTime>[].obs;
  final newList = <FhirDateTime>[].obs;
  final _newDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day + 1,
  ).obs;

  /// INIT

  /// GETTER FUNCTIONS
  String get text => _text.value;
  String get dz => _dz.value;
  DateTime get currentDate => _newDate.value;
  String get dateString => dateFromDateTime(_newDate.value);

  /// SETTER FUNCTIONS
  void setInitial(String text, String dz) {
    _text.value = text;
    _dz.value = dz;
    dateList.value = controller.immHx()[dz].toList();
    deleteList.value = <FhirDateTime>[];
    newList.value = <FhirDateTime>[];
  }

  set setList(Set<FhirDateTime> dates) {
    if (dates.isNotEmpty) {
      dateList.value = dates.toList();
    }
  }

  /// EVENTS
  void delete(FhirDateTime dateGiven) {
    if (deleteList.contains(dateGiven)) {
      deleteList.remove(dateGiven);
    } else {
      deleteList.add(dateGiven);
    }
  }

  void recordNewDate(DateTime newDate) {
    _newDate.value = newDate;
    final fhirDate = FhirDateTime(dateFromDateTime(newDate));
    if (!dateList.contains(fhirDate)) {
      dateList.add(fhirDate);
      newList.add(fhirDate);
    }
  }

  Future accept() async {
    for (var date in newList) {
      if (!deleteList.contains(date)) {
        await controller.newVaccine(drVaxCvxMap[_dz.value], date);
      }
    }
    Get.back();
    Get.back();
  }
}
