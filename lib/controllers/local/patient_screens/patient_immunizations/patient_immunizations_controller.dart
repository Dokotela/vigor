import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../_internal/utils/utils.dart';
import '../../../../models/data/patient_model.dart';
import '../../../../routes/routes.dart';
import '../shared/relative_age.dart';

class PatientImmunizationsController extends GetxController {
  // PROPERTIES
  final _patient = PatientModel(patient: Get.arguments).obs;
  final _fullImmRecs = <ImmunizationRecommendationRecommendation>[].obs;
  final _displayImmRecs = <ImmunizationRecommendationRecommendation>[].obs;

  // INIT
  @override
  Future onInit() async {
    await _patient.value.loadImmunizations();
    await _patient.value.getImmunizationRecommendation();
    _patient.value.recommendation.recommendation.forEach(_fullImmRecs.add);
    _displayImmRecs.value = _fullImmRecs;
    _displayImmRecs.removeWhere(
        (rec) => rec.forecastStatus.coding[0].code != Code('notComplete'));
    sortRecsByDate();
    _patient.value.createHx();
    super.onInit();
  }

  // GETTERS
  String name() => _patient.value.name();
  String id() => _patient.value.id();
  String sex() => _patient.value.sex();
  String birthDate() => _patient.value.birthDate();
  String relativeAge() => sharedRelativeAge(_patient.value.birthDate());

  int get numberOfRecommendations => _displayImmRecs.length;
  Color colorByDate(int index) {
    final dueDate = DateTime.parse(_displayImmRecs[index]
        .dateCriterion
        .firstWhere((criteria) => criteria?.code?.coding != null
            ? criteria.code.coding[0].code == Code('30980-7')
            : false)
        .value
        .toString());
    return dueDate.isBefore(DateTime.now())
        ? Colors.red
        : dueDate.isBefore(DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 30))
            ? Colors.yellow
            : Colors.transparent;
  }

  String vaccineType(int index) => _displayImmRecs[index].vaccineCode != null
      ? _displayImmRecs[index].vaccineCode[0].coding != null
          ? _displayImmRecs[index].vaccineCode[0].coding[0].display
          : ''
      : '';
  String vaccineDate(int index) => dateFromFhirDateTime(_displayImmRecs[index]
      .dateCriterion
      .firstWhere((criteria) => criteria?.code?.coding != null
          ? criteria.code.coding[0].code == Code('30980-7')
          : false)
      .value);

  // EVENTS
  void editPatient() => Get.offNamed(
        AppRoutes.PATIENT_REGISTRATION,
        arguments: _patient.value.patient,
      );

  // FUNCTIONS
  void sortRecsByDate() {
    _displayImmRecs.sort((a, b) => DateTime.parse(a.dateCriterion
            .firstWhere((criteria) => criteria?.code?.coding != null
                ? criteria.code.coding[0].code == Code('30980-7')
                : false)
            .value
            .toString())
        .compareTo(DateTime.parse(b.dateCriterion
            .firstWhere((criteria) => criteria?.code?.coding != null
                ? criteria.code.coding[0].code == Code('30980-7')
                : false)
            .value
            .toString())));
  }
}
