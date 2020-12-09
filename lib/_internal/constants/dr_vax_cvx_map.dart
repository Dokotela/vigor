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

final cvxToCoding = {
  '19': CodeableConcept(
      coding: [Coding(system: _system, code: Code('19'), display: 'BCG')]),
  '08': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('08'),
        display:
            'hepatitis B vaccine, pediatric or pediatric/adolescent dosage')
  ]),
  '122': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('122'),
        display: 'rotavirus vaccine, unspecified formulation')
  ]),
  '89': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('89'),
        display: 'poliovirus vaccine, unspecified formulation')
  ]),
  '198': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('198'),
        display: 'Diphtheria, pertussis, tetanus, hepatitis B,'
            ' Haemophilus Influenza Type b, (Pentavalent)')
  ]),
  '109': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('109'),
        display: 'pneumococcal vaccine, unspecified formulation')
  ]),
  '88': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('88'),
        display: 'influenza virus vaccine, unspecified formulation')
  ]),
  '03': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('03'),
        display: 'measles, mumps and rubella virus vaccine')
  ]),
  '01': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('01'),
        display: 'diphtheria, tetanus toxoids and pertussis vaccine')
  ]),
  '04': CodeableConcept(coding: [
    Coding(
        system: _system,
        code: Code('04'),
        display: 'measles and rubella virus vaccine')
  ]),
};

final _system = FhirUri('http://hl7.org/fhir/sid/cvx');
