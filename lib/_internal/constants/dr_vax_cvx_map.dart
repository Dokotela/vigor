import 'package:fhir/r4.dart';

final drVaxCvxMap = {
  'Tuberculosis': '19',
  'HepB': '08',
  'Rotavirus': '122',
  'Polio': '89',
  'Pentavalente': '198',
  'Pneumococcal': '109',
  'Influenza': '88',
  'MMR': '03',
  'DTP': '01',
  'MR': '04',
};

CodeableConcept cvxToCoding(String cvx) {
  final _system = FhirUri('http://hl7.org/fhir/sid/cvx');
  switch (cvx) {
    case '19':
      return CodeableConcept(
          coding: [Coding(system: _system, code: Code('19'), display: 'BCG')]);
    case '08':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('08'),
            display:
                'hepatitis B vaccine, pediatric or pediatric/adolescent dosage')
      ]);
    case '122':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('122'),
            display: 'rotavirus vaccine, unspecified formulation')
      ]);
    case '89':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('89'),
            display: 'poliovirus vaccine, unspecified formulation')
      ]);
    case '198':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('198'),
            display: 'Diphtheria, pertussis, tetanus, hepatitis B,'
                ' Haemophilus Influenza Type b, (Pentavalent)')
      ]);
    case '109':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('109'),
            display: 'pneumococcal vaccine, unspecified formulation')
      ]);
    case '88':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('88'),
            display: 'influenza virus vaccine, unspecified formulation')
      ]);
    case '03':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('03'),
            display: 'measles, mumps and rubella virus vaccine')
      ]);
    case '01':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('01'),
            display: 'diphtheria, tetanus toxoids and pertussis vaccine')
      ]);
    case '04':
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('04'),
            display: 'measles and rubella virus vaccine')
      ]);
    default:
      return CodeableConcept(coding: [
        Coding(
            system: _system,
            code: Code('999'),
            display: 'unknown vaccine or immune globulin')
      ]);
  }
}
