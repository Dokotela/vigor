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
  final _dewormingColor = Colors.grey.obs;
  final _vaccineColor = Colors.grey.obs;
  List<Patient> patientList;

  MaterialColor getDewormingColor() => _dewormingColor.value;
  MaterialColor getVaccineColor() => _vaccineColor.value;

  void filterByDeworming() {
    _dewormingColor.value =
        _dewormingColor.value == Colors.grey ? Colors.blue : Colors.grey;
    update();
  }

  void filterByVaccine() {
    _vaccineColor.value =
        _vaccineColor.value == Colors.grey ? Colors.blue : Colors.grey;
    update();
  }
}
