import 'package:fhir/fhir_r4.dart';
import 'package:vigor/3_domain/formatters/basic_enum_to_string.dart';
import 'package:vigor/3_domain/formatters/patient_name.dart';
import 'package:vigor/3_domain/formatters/simple_date.dart';

class PatientModel {
  PatientModel({
    this.patient,
    this.medsAdministered,
    this.pastImmunizations,
    this.immEvaluations,
    this.recommendation,
  });

  Patient patient;
  List<MedicationAdministration> medsAdministered;
  List<Immunization> pastImmunizations;
  List<ImmunizationEvaluation> immEvaluations;
  ImmunizationRecommendation recommendation;

  String name() => lastCommaGivenName(patient.name[0]);
  String id() => patient.id.toString();
  String sex() => basicEnumToString(patient.gender);
  String birthDate() => simpleDate(patient.birthDate);
}
