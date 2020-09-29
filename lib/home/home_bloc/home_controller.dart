import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:vigor/interfaces/i_fhir_db.dart';
import 'package:vigor/models/patient_model.dart';
import 'package:vigor/vaccines/vaccines.dart';

part 'home_controller.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeController extends GetxController {
  // PROPERTIES
  final state = const HomeState().obs;
  final nameController = TextEditingController();

  // INIT
  @override
  Future onInit() async {
    state.value = HomeState.initial();
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
        curNameList.add(patient?.name[0]?.text ??
            patient?.name[0]?.family ??
            patient?.name[0]?.given ??
            '');
      }
    }
    state.value =
        HomeState.loadNames(nameList: curNameList, patientList: curPatientList);
    update();
    super.onInit();
  }

  // GETTERS
  List<String> get nameList => state.value.nameList;
  String get nameError => state.value.nameError;
  String get newNameError => state.value.newNameError;

  // EVENTS
  void event(HomeEvent newEvent) {
    newEvent.map(
      registerPatient: (event) async {
        var curNameList = nameList.toList();
        curNameList.add(event.newName);
        final curPatientList = state.value.patientList;
        final newPatient = await IFhirDb().save(
          Patient(
            resourceType: 'Patient',
            name: [
              HumanName(text: event.newName),
            ],
            birthDate: Date(DateTime.now()),
          ),
        );
        newPatient.fold(
          (l) => Get.snackbar('Error saving new patient', '${l.error}'),
          (r) => curPatientList.add(r as Patient),
        );
        state.value = HomeState.loadNames(
            nameList: curNameList, patientList: curPatientList);
        update();
      },
      choosePatient: (event) {
        final patient = state.value.patientList.firstWhere((thisPatient) =>
            thisPatient.name == null
                ? false
                : thisPatient.name[0].text == event.name);
        Get.to(Vaccines(), arguments: PatientModel(patient: patient));
      },
    );
  }
}
