// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:fhir/fhir_r4.dart';
// import 'package:vigor/domain/registration/contact_registration/contact_registration_value_objects.dart';

// import 'package:vigor/domain/registration/contact_registration/i_contact_registration_facade.dart';
// import 'package:vigor/domain/registration/registration_failure.dart';
// import 'package:vigor/models/registration_value_objects.dart';
// import 'package:vigor/infrastructure/fhir_db/resource_dao.dart';

// class ContactRegistrationFacade implements IContactRegistrationFacade {
//   ContactRegistrationFacade();

//   @override
//   Future<Either<RegistrationFailure, Unit>> updateContacts({
//     @required Patient patient,
//     @required RegistrationName family1,
//     @required RegistrationName given1,
//     @required RegistrationRelation relationship1,
//     @required RegistrationBarrio barrio1,
//     RegistrationName family2,
//     RegistrationName given2,
//     RegistrationRelation relationship2,
//     RegistrationBarrio barrio2,
//     RegistrationName family3,
//     RegistrationName given3,
//     RegistrationRelation relationship3,
//     RegistrationBarrio barrio3,
//   }) async {
//     final family1String = family1.getOrCrash();
//     final given1String = given1.getOrCrash();
//     final relationship1String = relationship1.getOrCrash();
//     final barrio1String = barrio1.getOrCrash();

//     final family2String = family2.getOrCrash();
//     final given2String = given2.getOrCrash();
//     final relationship2String = relationship2.getOrCrash();
//     final barrio2String = barrio2.getOrCrash();

//     final family3String = family3.getOrCrash();
//     final given3String = given3.getOrCrash();
//     final relationship3String = relationship3.getOrCrash();
//     final barrio3String = barrio3.getOrCrash();

//     final patientDao = ResourceDao();
//     final contactList = <PatientContact>[];
//     contactList.add(_formatPatientContact(
//         family1String, given1String, barrio1String, relationship1String));

//     if (family2String != '') {
//       contactList.add(_formatPatientContact(
//           family2String, given2String, barrio2String, relationship2String));
//     }
//     if (family3String != '') {
//       contactList.add(_formatPatientContact(
//           family3String, given3String, barrio3String, relationship3String));
//     }
//     final newPatient = patient.copyWith(contact: contactList);

//     try {
//       await patientDao.save(newPatient);
//       return right(unit);
//     } on Exception {
//       return left(const RegistrationFailure.unableToWriteDB());
//     }
//   }

//   PatientContact _formatPatientContact(
//           String family, String given, String barrio, String relationship) =>
//       PatientContact(
//         name: HumanName(family: family, given: [given]),
//         address: Address(district: barrio),
//         relationship: _mapRelationship(relationship),
//       );

//   List<CodeableConcept> _mapRelationship(String relationship) {
//     switch (relationship) {
//       case 'mother':
//         return _getCodeableConcept('72705000', 'Mother');
//       case 'grandmother':
//         return _getCodeableConcept('113157001', 'Grandmother');
//       case 'aunt':
//         return _getCodeableConcept('25211005', 'Aunt');
//       case 'sister':
//         return _getCodeableConcept('27733009', 'Sister');
//       case 'father':
//         return _getCodeableConcept('66839005', 'Father');
//       case 'grandfather':
//         return _getCodeableConcept('34871008', 'Grandfather');
//       case 'uncle':
//         return _getCodeableConcept('38048003', 'Uncle');
//       case 'brother':
//         return _getCodeableConcept('70924004', 'Brother');
//       default:
//         return _getCodeableConcept('394738000', 'Other');
//     }
//   }

//   List<CodeableConcept> _getCodeableConcept(String code, String display) => [
//         CodeableConcept(coding: [
//           Coding(
//             system: FhirUri('http://snomed.info/sct'),
//             code: Code(code),
//             display: display,
//           )
//         ])
//       ];
// }
