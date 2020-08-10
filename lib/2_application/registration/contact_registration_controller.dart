import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fhir/fhir_r4.dart' as r4;
import 'package:vigor/3_domain/const/const.dart';

class ContactRegistrationController extends GetxController {
  final r4.Patient patient = Get.arguments;
  TextEditingController familyName = TextEditingController(text: '');
  TextEditingController givenName = TextEditingController(text: '');
  String familyError;
  String givenError;
  final barrio = 'Neighborhood'.obs;
  final barrioError = ''.obs;
  final barriosList = barrios;
}
