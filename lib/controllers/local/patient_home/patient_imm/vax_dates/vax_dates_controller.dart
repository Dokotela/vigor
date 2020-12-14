import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/_internal/utils/utils.dart';
import 'package:vigor/routes/routes.dart';

import '../patient_imm_controller.dart';

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

  void delete(int index) => '';
  // dateList[index] = dateList[index]..deleted = !dateList[index].deleted;

  void editDate(int index, DateTime newDate) {
    // if (newDate != null) {
    //   dateList[index] = dateList[index]
    //     ..current = newDate
    //     ..updated = true;
    // }
  }

  Future accept() async {
    // for (var date in dateList) {
    //   if (date.added) {
    //     if (!date.deleted) {
    //       await controller.newVaccine(
    //           drVaxCvxMap[_dz.value], FhirDateTime(date.current));
    //     }
    //   }
    //   // } else if (date.deleted) {
    //   //   await controller.deleteVaccine(
    //   //       drVaxCvxMap[_dz.value], FhirDateTime(date.current));
    //   // } else if (date.updated) {
    //   //   await controller.updateVaccine(drVaxCvxMap[_dz.value],
    //   //       FhirDateTime(date.current), FhirDateTime(date.original));
    //   // }
    // }
    Get.back();
    Get.back();
  }

  void immunizationPage() => Get.toNamed(AppRoutes.PATIENT_IMM_PAGE,
      arguments: controller.actualPatient());
}
