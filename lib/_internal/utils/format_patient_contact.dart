import 'package:fhir/r4.dart';
import '../../_internal/utils/relationship_types.dart';

PatientContact formatPatientContact(
        String family, String given, String barrio, String relationship) =>
    PatientContact(
      name: HumanName(family: family, given: [given]),
      address: Address(district: barrio),
      relationship: _mapRelationship(relationshipLabelToString(relationship)),
    );

List<CodeableConcept> _mapRelationship(String relationship) {
  switch (relationship) {
    case 'mother':
      return _getCodeableConcept('72705000', 'Mother');
    case 'grandmother':
      return _getCodeableConcept('113157001', 'Grandmother');
    case 'aunt':
      return _getCodeableConcept('25211005', 'Aunt');
    case 'sister':
      return _getCodeableConcept('27733009', 'Sister');
    case 'father':
      return _getCodeableConcept('66839005', 'Father');
    case 'grandfather':
      return _getCodeableConcept('34871008', 'Grandfather');
    case 'uncle':
      return _getCodeableConcept('38048003', 'Uncle');
    case 'brother':
      return _getCodeableConcept('70924004', 'Brother');
    default:
      return _getCodeableConcept('394738000', 'Other');
  }
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
