import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../_internal/utils/utils.dart';
import '../../../services/i_fhir_db.dart';
import '../../../ui/views/views.dart';

part 'state.dart';
part 'event.dart';
part 'controller.freezed.dart';

class PatientSearchController extends GetxController {
  // State
  final state = PatientSearchState().obs;

  // INIT
  @override
  Future onInit() async {
    event(
      PatientSearchEvent.loadList(
        patientList:
            (await IFhirDb().returnListOfSingleResourceType('Patient')).fold(
          (l) => <Resource>[],
          (r) => r.toList(),
        ),
      ),
    );
    super.onInit();
  }

  // GETTER FUNCTIONS
  String patientName(int index) =>
      lastCommaGivenName(state.value.activePatientList[index] as Patient);
  String patientDob(int index) =>
      simpleDate((state.value.activePatientList[index] as Patient).birthDate);
  String patientBarrio(int index) =>
      (state.value.activePatientList[index] as Patient).address == null
          ? ''
          : (state.value.activePatientList[index] as Patient)
              .address[0]
              .district;
  TextEditingController get searchName => state.value.searchName;
  int get currentListLength => state.value.activePatientList.length;

  // EVENTS
  void event(PatientSearchEvent newEvent) {
    newEvent.map(
      loadList: (m) => _updateState(
          fullPatientList: m.patientList, activePatientList: m.patientList),
      searchPatientByName: (m) => m.name.length >= 2
          ? _updateState(activePatientList: state.value.searchByName(m.name))
          : _updateState(activePatientList: state.value.fullPatientList),
      sortPatientsByName: (m) =>
          _updateState(activePatientList: state.value.sortByName()),
      sortPatientsByBirthdate: (m) =>
          _updateState(activePatientList: state.value.sortByBirthdate()),
      sortPatientsByBarrio: (m) =>
          _updateState(activePatientList: state.value.sortByBarrio()),
      selectPatient: (m) =>
          Get.to(HomeView(), arguments: state.value.activePatientList[m.index]),
    );
  }

  void _updateState({
    List<Resource> fullPatientList,
    List<Resource> activePatientList,
    TextEditingController searchName,
  }) =>
      state.value = state.value.copyWith(
          fullPatientList: fullPatientList ?? state.value.fullPatientList,
          activePatientList: activePatientList ?? state.value.activePatientList,
          searchName: searchName ?? state.value.searchName);
}
