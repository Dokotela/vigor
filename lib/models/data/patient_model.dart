import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../_internal/constants/dr_vax_cvx_map.dart';
import '../../_internal/utils/utils.dart';
import '../../services/i_dr_vax_cast.dart';
import '../../services/i_fhir_db.dart';

class PatientModel {
  PatientModel({
    this.patient,
    this.pastImmunizations,
    // this.immEvaluations,
    // this.recommendation,
    // this.pastImmMap,
    this.immHx,
  }) {
    pastImmunizations ??= <Immunization>[];
    // immEvaluations ??= <ImmunizationEvaluation>[];
    // pastImmMap ??= <String, List<Immunization>>{};
    immHx ??= <String, Set<FhirDateTime>>{};
  }

  Patient patient;
  List<Immunization> pastImmunizations;
  // List<ImmunizationEvaluation> immEvaluations;
  // ImmunizationRecommendation recommendation;
  // Map<String, List<Immunization>> pastImmMap;
  Map<String, Set<FhirDateTime>> immHx;

  Future loadImmunizations() async {
    final iFhirDb = IFhirDb();
    await iFhirDb.returnPatientImmunizationHistory(patient.id.toString()).then(
      (result) {
        result.fold(
          (l) => Get.snackbar('Error', '${l.error}'),
          (r) => r.forEach(
            (resource) {
              if ((resource as Immunization).status == Code('completed')) {
                if (!pastImmunizations.contains(resource as Immunization)) {
                  pastImmunizations.add(resource as Immunization);
                }
              }
            },
          ),
        );
      },
    );
    immHx = IDrVaxCast.drVaxCast(immunizations: pastImmunizations);
  }

  Immunization _newVax(String cvx, FhirDateTime date) => Immunization(
      status: Code('completed'),
      patient: Reference(reference: 'Patient/${patient.id}'),
      occurrenceDateTime: date,
      vaccineCode: cvxToCoding[cvx]);

  int _vaxIndex(Immunization immunization) =>
      pastImmunizations.indexWhere((vax) =>
          vax.status == immunization.status &&
          vax.patient == immunization.patient &&
          vax.occurrenceDateTime == immunization.occurrenceDateTime &&
          vax.vaccineCode == immunization.vaccineCode);

  Future addNewVaccine(String cvx, FhirDateTime date) async {
    final immunization = _newVax(cvx, date);
    if (_vaxIndex(immunization) == -1) {
      final iFhirDb = IFhirDb();
      await iFhirDb.save(immunization);
      pastImmunizations.add(immunization);
      immHx = IDrVaxCast.drVaxCast(immunizations: pastImmunizations);
    }
  }

  Future deleteVaccine(String cvx, FhirDateTime date) async {
    print('delete');
    print(pastImmunizations.length);
    final immunization = _newVax(cvx, date);
    final index = _vaxIndex(immunization);
    // print(index);
    if (index != -1) {
      pastImmunizations[index] =
          pastImmunizations[index].copyWith(status: Code('entered-in-error'));
      print(pastImmunizations[index].toJson());
      final iFhirDb = IFhirDb();
      var temp = await iFhirDb.save(immunization);
      temp.fold((l) => print(l.error), (r) => print(r.toJson()));
      pastImmunizations.removeAt(index);
      // print(pastImmunizations.length);
      immHx = IDrVaxCast.drVaxCast(immunizations: pastImmunizations);
    }
  }

  Future updateVaccine(
      String cvx, FhirDateTime current, FhirDateTime original) async {
    final immunization = _newVax(cvx, original);
    final index = _vaxIndex(immunization);
    if (index != -1) {
      pastImmunizations[index] =
          pastImmunizations[index].copyWith(occurrenceDateTime: current);
      final iFhirDb = IFhirDb();
      await iFhirDb.save(immunization);
      immHx = IDrVaxCast.drVaxCast(immunizations: pastImmunizations);
    }
  }

  /// These two functions both make full use of the vax_cast package to allow
  /// complex vaccine forecasting

  //   void createHx() {
  //   for (var imm in pastImmunizations) {
  //     final cvx = imm.vaccineCode.coding
  //         .firstWhere(
  //             (coding) =>
  //                 coding.system == FhirUri('http://hl7.org/fhir/sid/cvx'),
  //             orElse: () => null)
  //         ?.code
  //         ?.toString();
  //     if (cvx != null) {
  //       for (var ag in simpleCvxMap[cvx].antigens) {
  //         pastImmMap.containsKey(ag)
  //             ? pastImmMap[ag].add(imm)
  //             : pastImmMap[ag] = [imm];
  //       }
  //     }
  //   }
  // }

  // Future getImmunizationRecommendation() async {
  //   final returnValues = await IVaxCast.vaxCast(
  //       patient: patient,
  //       immunizations: pastImmunizations,
  //       assessmentDate: Date(DateTime.now().toIso8601String()));
  //   for (final parameter in returnValues.parameter) {
  //     if (parameter.name == 'evaluation') {
  //       immEvaluations.add(parameter.resource);
  //     }
  //     if (parameter.name == 'recommendation') {
  //       recommendation = parameter.resource;
  //     }
  //   }
  // }

  String name() => lastCommaGivenName(patient);
  String familyName() => patient?.name == null ? '' : patient.name[0].family;
  String givenName() => patient?.name == null
      ? ''
      : patient.name[0].given == null
          ? ''
          : patient.name[0].given[0];
  String id() => patient.id.toString();
  String sex() => basicEnumToString(patient.gender);
  String birthDate() => dateFromFhirDate(patient.birthDate);
  String barrio() => districtFromAddress(patient.address);
}
