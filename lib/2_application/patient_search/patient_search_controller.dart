import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/3_domain/interfaces/save_to_db.dart';

class PatientSearchController extends GetxController {
  @override
  Future onInit() async {
    patientList = (await IFhirDb().returnListOfSingleResourceType('Patient'))
        .fold((l) => null, (r) => r.toList());
    patientList.forEach((patient) {
      print('${patient.id}: ${patient.name[0].family}');
    });
    super.onInit();
  }

  final searchName = TextEditingController();
  List<Patient> patientList;
}
