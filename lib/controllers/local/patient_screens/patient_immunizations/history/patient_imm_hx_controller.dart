import 'package:fhir/r4.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../../models/patient_model.dart';
import '../../../../views/screens.dart';
import '../../patient_home_controller.dart';

part 'patient_imm_hx_state.dart';
part 'patient_imm_hx_controller.freezed.dart';

class PatientImmHxController extends GetxController {
  /// PROPERTIES
  final state =
      PatientImmHxState.initial(Get.find<PatientHomeController>().patient).obs;

  /// INIT
  @override
  Future onInit() async {
    final patient = state.value.patient;
    patient.loadImmunizations();
    super.onInit();
  }

  /// GETTERS

  // String vaccineType(int index) => state
  //             .value.displayImmRecs[index].vaccineCode !=
  //         null
  //     ? state.value.displayImmRecs[index].vaccineCode[0].coding != null
  //         ? state.value.displayImmRecs[index].vaccineCode[0].coding[0].display
  //         : ''
  //     : '';
  // String vaccineDate(int index) =>
  //     simpleFhirDateTime(state.value.displayImmRecs[index].dateCriterion
  //         .firstWhere((criteria) => criteria?.code?.coding != null
  //             ? criteria.code.coding[0].code == Code('30980-7')
  //             : false)
  //         .value);

  // EVENTS
  void editPatient() => Get.off(PatientRegistrationScreen(),
      arguments: state.value.patient.patient);

  // FUNCTIONS
}
