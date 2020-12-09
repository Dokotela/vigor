import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/_internal/utils/utils.dart';

import '../patient_imm_controller.dart';

class VaxDatesController extends GetxController {
  /// PROPERTIES
  final PatientImmController controller = Get.find();
  final _text = ''.obs;
  final _dz = ''.obs;
  final dateList = <DateEdit>[].obs;

  /// INIT
  @override
  void onInit() {
    _text.value = Get.arguments[0];
    _dz.value = Get.arguments[1];
    final startList = controller.immHx()[dz].toList();
    startList.forEach((entry) {
      final newEntry = DateEdit(
        current: dateTimeFromFhirDateTime(entry),
        original: dateTimeFromFhirDateTime(entry),
        deleted: false,
        updated: false,
        added: false,
      );
      dateList.addIf(!dateList.contains(newEntry), newEntry);
    });
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String get text => _text.value;
  String get dz => _dz.value;
  DateTime currentDate(int index) => dateList[index].current;
  bool isDeleted(int index) => dateList[index].deleted;

  /// SETTER FUNCTIONS

  /// EVENTS
  void delete(int index) =>
      dateList[index] = dateList[index]..deleted = !dateList[index].deleted;

  void addNew() => dateList.add(DateEdit(
      current: DateTime.now(),
      original: DateTime.now(),
      deleted: false,
      updated: false,
      added: true));

  void editDate(int index, DateTime newDate) {
    if (newDate != null) {
      dateList[index] = dateList[index]
        ..current = newDate
        ..updated = true;
    }
  }

  Future accept() async {
    for (var date in dateList) {
      if (date.added) {
        if (!date.deleted) {
          await controller.newVaccine(
              drVaxCvxMap[_dz.value], FhirDateTime(date.current));
        }
      } else if (date.deleted) {
        await controller.deleteVaccine(
            drVaxCvxMap[_dz.value], FhirDateTime(date.current));
      } else if (date.updated) {
        await controller.updateVaccine(drVaxCvxMap[_dz.value],
            FhirDateTime(date.current), FhirDateTime(date.original));
      }
    }
    Get.back();
    Get.back();
  }
}

class DateEdit {
  DateEdit(
      {this.current, this.original, this.deleted, this.updated, this.added});

  DateTime current;
  DateTime original;
  bool deleted;
  bool updated;
  bool added;

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : other.runtimeType != runtimeType
          ? false
          : other is DateEdit &&
              current == other.current &&
              original == other.original &&
              deleted == other.deleted &&
              updated == other.updated &&
              added == other.added;

  @override
  int get hashCode => (current.hashCode +
          original.hashCode +
          deleted.hashCode +
          updated.hashCode +
          added.hashCode)
      .hashCode;
}
