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
    labels.general.relation.mother: _getCodeableConcept('72705000', 'Mother'),
    labels.general.relation.grandmother:
        _getCodeableConcept('113157001', 'Grandmother'),
    labels.general.relation.aunt: _getCodeableConcept('25211005', 'Aunt'),
    labels.general.relation.sister: _getCodeableConcept('27733009', 'Sister'),
    labels.general.relation.daughter: _getCodeableConcept('394738000', 'Other'),
    labels.general.relation.niece: _getCodeableConcept('394738000', 'Other'),
    labels.general.relation.father: _getCodeableConcept('66839005', 'Father'),
    labels.general.relation.grandfather:
        _getCodeableConcept('34871008', 'Grandfather'),
    labels.general.relation.uncle: _getCodeableConcept('38048003', 'Uncle'),
    labels.general.relation.brother: _getCodeableConcept('70924004', 'Brother'),
    labels.general.relation.son: _getCodeableConcept('394738000', 'Other'),
    labels.general.relation.nephew: _getCodeableConcept('394738000', 'Other'),
    labels.general.relation.other: _getCodeableConcept('394738000', 'Other'),
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

String getPatientContactType(List<PatientContact> contact) => contact == null
    ? 'Relationship'
    : contact[0]?.relationship == null
        ? ''
        : contact[0].relationship[0]?.coding == null
            ? ''
            : contact[0].relationship[0].coding[0]?.display?.toLowerCase();
