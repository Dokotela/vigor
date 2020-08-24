import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/3_domain/formatters/patient_name.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/4_infrastructure/interfaces/i_fhir_db.dart';

part 'patient_search_controller.freezed.dart';
part 'patient_search_state.dart';

class PatientSearchController extends GetxController {
  // PROPERTIES
  final searchName = TextEditingController();
  final state = const PatientSearchState().obs;

  // INIT
  @override
  Future onInit() async {
    state.value = PatientSearchState.initial(
        (await IFhirDb().returnListOfSingleResourceType('Patient'))
            .fold((l) => null, (r) => r.toList()));
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
  int get currentListLength => state.value.activePatientList.length;

  // EVENTS
  void searchPatientsByName() {
    var patientList = <Resource>[];
    if (searchName.text.length >= 2) {
      for (final patient in state.value.fullPatientList) {
        if (lastCommaGivenName(patient as Patient).contains(searchName.text)) {
          patientList.add(patient);
        }
      }
    } else {
      patientList = state.value.fullPatientList;
    }
    state.value = state.value
        .copyWith(activePatientList: _sortPatientsByName(patientList));
    update();
  }

  void sortCurrentPatientsByName() {
    state.value = state.value.copyWith(
        activePatientList: _sortPatientsByName(state.value.activePatientList));
    update();
  }

  List<Patient> _sortPatientsByName(List<Resource> patientList) {
    patientList.sort((a, b) => lastCommaGivenName(a as Patient)
        .toLowerCase()
        .compareTo(lastCommaGivenName(b as Patient).toLowerCase()));
    return patientList;
  }

  void sortPatientsByBirthDate() {
    final patientList = state.value.activePatientList;
    patientList.sort((a, b) =>
        (DateTime.tryParse((a as Patient).birthDate.toString()) ??
                DateTime(1900))
            .compareTo(
                (DateTime.tryParse((b as Patient).birthDate.toString())) ??
                    DateTime(1900)));
    state.value = state.value.copyWith(activePatientList: patientList);
    update();
  }

  void sortPatientsByBarrio() {
    final patientList = state.value.activePatientList;
    patientList.sort((a, b) => ((a as Patient)?.address == null
            ? ''
            : (a as Patient).address[0]?.district ?? '')
        .compareTo((b as Patient)?.address == null
            ? ''
            : (b as Patient).address[0]?.district ?? ''));
    state.value = state.value.copyWith(activePatientList: patientList);
    update();
  }

  void selectPatient(int index) =>
      Get.to(PatientHome(), arguments: state.value.activePatientList[index]);
}
