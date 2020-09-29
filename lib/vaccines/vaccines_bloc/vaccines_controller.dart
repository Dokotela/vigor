import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';
import 'package:vigor/models/patient_model.dart';

part 'vaccines_controller.freezed.dart';
part 'vaccines_event.dart';
part 'vaccines_state.dart';

class VaccinesController extends GetxController {
  // PROPERTIES
  final state = const VaccinesState().obs;

  // INIT
  @override
  Future onInit() async {
    state.value = VaccinesState.initial();
    final PatientModel patient = PatientModel(patient: Get.arguments);
    patient.loadImmunizations();
    await patient.getImmunizationRecommendation();
    final fullRecs = <ImmunizationRecommendationRecommendation>[];
    patient.recommendation.recommendation.forEach(fullRecs.add);
    final displayRecs = fullRecs;
    displayRecs.removeWhere(
        (rec) => rec.forecastStatus.coding[0].code != Code('notComplete'));
    state.value = VaccinesState(
      patient: patient,
      immEvals: patient.immEvaluations,
      fullImmRecs: fullRecs,
      displayImmRecs: sortRecsByDate(displayRecs),
    );
    super.onInit();
  }

  // GETTERS
  String get name =>
      state.value.patient == null ? '' : state.value.patient.name();
  String get sex =>
      state.value.patient == null ? '' : state.value.patient.sex();
  String get birthDate =>
      state.value.patient == null ? '' : state.value.patient.birthDate();

  // GETTERS
  int get numberOfRecommendations => state.value.displayImmRecs.length;
  Color colorByDate(int index) {
    final dueDate = DateTime.parse(state
        .value.displayImmRecs[index].dateCriterion
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

  String vaccineType(int index) =>
      state.value.displayImmRecs[index].vaccineCode != null
          ? state.value.displayImmRecs[index].vaccineCode[0].coding != null
              ? state
                  .value.displayImmRecs[index].vaccineCode[0].coding[0].display
              : ''
          : '';
  String vaccineDate(int index) =>
      simpleFhirDateTime(state.value.displayImmRecs[index].dateCriterion
          .firstWhere((criteria) => criteria?.code?.coding != null
              ? criteria.code.coding[0].code == Code('30980-7')
              : false)
          .value);

  // FUNCTIONS

  List<ImmunizationRecommendationRecommendation> sortRecsByDate(
      List<ImmunizationRecommendationRecommendation> recList) {
    recList.sort((a, b) => DateTime.parse(a.dateCriterion
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
    return recList;
  }
}
