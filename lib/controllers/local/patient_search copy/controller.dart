import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../_internal/utils/utils.dart';
import '../../../services/i_fhir_db.dart';
import '../../../ui/views/views.dart';

part 'patient_search_model.dart';

class PatientSearchController extends GetxController {
  static PatientSearchController get to => Get.find();

  final PatientSearchModel _model = PatientSearchModel();
  PatientSearchModel get model => _model;
}
