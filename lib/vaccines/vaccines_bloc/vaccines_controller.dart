import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:vigor/interfaces/i_fhir_db.dart';

part 'vaccines_controller.freezed.dart';
part 'vaccines_event.dart';
part 'vaccines_state.dart';

class VaccinesController extends GetxController {
  // PROPERTIES
  final state = const VaccinesState().obs;
  final nameController = TextEditingController();

  // INIT
  @override
  Future onInit() async {
    state.value = VaccinesState.initial();
    final patientsFromDb =
        (await IFhirDb().returnListOfSingleResourceType('Patient'))
            .fold((l) => null, (r) => r.toList());
    final curPatientList = <Patient>[];
    for (var patient in patientsFromDb) {
      curPatientList.add(patient as Patient);
    }
    final curNameList = <String>[];
    for (var patient in curPatientList) {
      if (patient.name != null) {
        curNameList.add(patient?.name[0]?.text ?? '');
      }
    }
    super.onInit();
    state.value = VaccinesState.loadNames(
        nameList: curNameList, patientList: curPatientList);
  }

  // GETTERS
  // String get name => state.value.
  // List<String> get nameList => state.value.nameList;
  // String get nameError => state.value.nameError;
  // String get newNameError => state.value.newNameError;

  // EVENTS
  // void event(VaccinesEvent newEvent) {
  //   newEvent.map(
  //     registerPatient: (event) async {
  //       final curNameList = nameList.toList();
  //       curNameList.add(event.newName);
  //       final curPatientList = state.value.patientList;
  //       final newPatient = await IFhirDb().save(
  //         Patient(
  //           resourceType: 'Patient',
  //           name: [
  //             HumanName(text: event.newName),
  //           ],
  //         ),
  //       );
  //       newPatient.fold(
  //           (l) => Get.snackbar('Error saving new patient', '${l.error}'),
  //           (r) => curPatientList.add(r as Patient));
  //       state.value = VaccinesState.loadNames(
  //           nameList: curNameList, patientList: curPatientList);
  //       update();
  //     },
  //     choosePatient: (event) {

  //     },
  //   );
  // }
}
