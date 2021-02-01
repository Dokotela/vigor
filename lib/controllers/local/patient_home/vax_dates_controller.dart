import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../../_internal/constants/constants.dart';
import '../../../_internal/utils/utils.dart';

import 'patient_imm_controller.dart';

class VaxDatesController extends GetxController {
  /// PROPERTIES
  final PatientImmController controller = Get.find();
  final _text = ''.obs;
  final _dz = ''.obs;
  final immList = <Immunization>[].obs;

  /// INIT
  @override
  void onInit() {
    _text.value = Get.arguments[0];
    _dz.value = Get.arguments[1];
    immList.addAll(controller.immHx()[dz].toList());
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String get text => _text.value;
  String get dz => _dz.value;
  String dateString(int index) =>
      dateFromFhirDateTime(immList[index].occurrenceDateTime);
  DateTime currentDate(int index) =>
      dateTimeFromFhirDateTime(immList[index].occurrenceDateTime);

  /// SETTER FUNCTIONS
  void updateImmList() {
    immList.clear();
    immList.addAll(controller.immHx()[dz].toList());
  }

  /// EVENTS
  Future addNew() async {
    await controller.addNew(
        drVaxCvxMap[_dz.value], FhirDateTime(DateTime.now()));
    updateImmList();
  }

  Future delete(int index) async {
    await controller.deleteVaccine(immList[index]);
    updateImmList();
    Get.back();
  }

  Future editDate(int index, DateTime newDate) async {
    if (newDate != null) {
      await controller.editDate(immList[index], newDate);
    }
    updateImmList();
  }
}
