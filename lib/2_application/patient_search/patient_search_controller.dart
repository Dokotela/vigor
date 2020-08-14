import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/3_domain/formatters/patient_name.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/3_domain/interfaces/i_fhir_db.dart';

class PatientSearchController extends GetxController {
  @override
  Future onInit() async {
    fullPatientList =
        (await IFhirDb().returnListOfSingleResourceType('Patient'))
            .fold((l) => null, (r) => r.toList());
    curPatientList.value = fullPatientList;
    super.onInit();
  }

  final searchName = TextEditingController();
  var fullPatientList = <Resource>[];
  final curPatientList = <Resource>[].obs;

  String patientName(Resource resource) =>
      lastCommaGivenName((resource as Patient).name[0]);
  String patientDob(Resource resource) =>
      simpleDate((resource as Patient).birthDate);
  String patientBarrio(Resource resource) =>
      (resource as Patient).address == null
          ? ''
          : (resource as Patient).address[0].district;

  void searchPatientsByName() {
    if (searchName.text.length >= 2) {
      curPatientList.value = <Resource>[];
      for (final patient in fullPatientList) {
        if (lastCommaGivenName((patient as Patient).name[0])
            .contains(searchName.text)) {
          curPatientList.value.add(patient);
        }
      }
    } else {
      curPatientList.value = fullPatientList;
      sortPatientsByName();
    }
    update();
  }

  void sortPatientsByName() {
    curPatientList.value.sort((a, b) =>
        lastCommaGivenName((a as Patient).name[0]).toLowerCase().compareTo(
            lastCommaGivenName((b as Patient).name[0]).toLowerCase()));
    update();
  }

  void sortPatientsByBirthDate() {
    curPatientList.value.sort((a, b) =>
        (DateTime.tryParse((a as Patient).birthDate.toString()) ??
                DateTime(1900))
            .compareTo(
                (DateTime.tryParse((b as Patient).birthDate.toString())) ??
                    DateTime(1900)));
    update();
  }

  void sortPatientsByBarrio() {
    curPatientList.value.sort((a, b) => ((a as Patient)?.address == null
            ? ''
            : (a as Patient).address[0]?.district ?? '')
        .compareTo((b as Patient)?.address == null
            ? ''
            : (b as Patient).address[0]?.district ?? ''));
    update();
  }
}
