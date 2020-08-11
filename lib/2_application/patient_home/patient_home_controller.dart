import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fhir/fhir_r4.dart' as r4;

class PatientHomeController extends GetxController {
  final r4.Patient patient = Get.arguments;
}
