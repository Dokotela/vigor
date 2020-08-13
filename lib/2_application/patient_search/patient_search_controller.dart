import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/3_domain/formatters/patient_name.dart';
import 'package:vigor/3_domain/interfaces/i_fhir_db.dart';

class PatientSearchController extends GetxController {
  @override
  Future onInit() async {
    patientList = (await IFhirDb().returnListOfSingleResourceType('Patient'))
        .fold((l) => null, (r) => r.toList());
    super.onInit();
  }

  final searchName = TextEditingController();
  List<Resource> patientList = [];
  String patientName(Resource resource) =>
      lastCommaGivenName((resource as Patient).name[0]);
}
