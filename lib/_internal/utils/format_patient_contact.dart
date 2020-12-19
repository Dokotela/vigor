import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import '../../localization.dart';

PatientContact formatPatientContact(
        String family, String given, String barrio, String relationship) =>
    PatientContact(
      name: HumanName(family: family, given: [given]),
      address: Address(district: barrio),
      relationship: _mapRelationship(relationship),
    );

List<CodeableConcept> _mapRelationship(String relationship) {
  final labels = AppLocalizations.of(Get.context);
  Map<String, List<CodeableConcept>> mapRelationToCode = {
    labels.relationships.mother: _getCodeableConcept('72705000', 'Mother'),
    labels.relationships.grandmother:
        _getCodeableConcept('113157001', 'Grandmother'),
    labels.relationships.aunt: _getCodeableConcept('25211005', 'Aunt'),
    labels.relationships.sister: _getCodeableConcept('27733009', 'Sister'),
    labels.relationships.daughter: _getCodeableConcept('394738000', 'Other'),
    labels.relationships.niece: _getCodeableConcept('394738000', 'Other'),
    labels.relationships.father: _getCodeableConcept('66839005', 'Father'),
    labels.relationships.grandfather:
        _getCodeableConcept('34871008', 'Grandfather'),
    labels.relationships.uncle: _getCodeableConcept('38048003', 'Uncle'),
    labels.relationships.brother: _getCodeableConcept('70924004', 'Brother'),
    labels.relationships.son: _getCodeableConcept('394738000', 'Other'),
    labels.relationships.nephew: _getCodeableConcept('394738000', 'Other'),
    labels.relationships.other: _getCodeableConcept('394738000', 'Other'),
  };
  return mapRelationToCode[relationship] ??
      _getCodeableConcept('394738000', 'Other');
}

List<CodeableConcept> _getCodeableConcept(String code, String display) => [
      CodeableConcept(coding: [
        Coding(
          system: FhirUri('http://snomed.info/sct'),
          code: Code(code),
          display: display,
        )
      ])
    ];
