import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/interfaces/i_fhir_db.dart';
import 'package:vigor/interfaces/i_vax_cast.dart';

import '../formatters.dart';

class PatientModel {
  PatientModel({
    this.patient,
    this.pastImmunizations,
    this.immEvaluations,
    this.recommendation,
  }) {
    medsAdministered ??= <MedicationAdministration>[];
    pastImmunizations ??= <Immunization>[];
    immEvaluations ??= <ImmunizationEvaluation>[];
  }

  Patient patient;
  List<MedicationAdministration> medsAdministered;
  List<Immunization> pastImmunizations;
  List<ImmunizationEvaluation> immEvaluations;
  ImmunizationRecommendation recommendation;

  void loadImmunizations() {
    final iFhirDb = IFhirDb();
    iFhirDb
        .returnPatientImmunizationHistory(patient.id.toString())
        .then((result) {
      result.fold(
          (ifLeft) => Get.snackbar('Error', '${ifLeft.error}'),
          (ifRight) => ifRight.forEach(
              (resource) => pastImmunizations.add(resource as Immunization)));
    });
    print(pastImmunizations.length);
  }

  Future getImmunizationRecommendation() async {
    final returnValues = await IVaxCast.vaxCast(
        patient: patient,
        immunizations: pastImmunizations,
        assessmentDate: Date(DateTime.now().toIso8601String()));
    for (final parameter in returnValues.parameter) {
      if (parameter.name == 'evaluation') {
        immEvaluations.add(parameter.resource);
      }
      if (parameter.name == 'recommendation') {
        recommendation = parameter.resource;
      }
    }
  }

  String name() => patient.name == null ? '' : patient.name[0].text;
  String sex() =>
      patient.gender == null ? '' : basicEnumToString(patient.gender);
  String birthDate() =>
      patient.birthDate == null ? '' : simpleDate(patient.birthDate);
  DateTime birthDateValue() => patient.birthDate == null
      ? ''
      : DateTime.parse(patient.birthDate.toString());
}
