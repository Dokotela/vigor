// part of 'contact_registration_controller.dart';

// @freezed
// abstract class ContactRegistrationState with _$ContactRegistrationState {
//   const factory ContactRegistrationState({
//     Patient patient,
//     String familyNameError1,
//     String givenNameError1,
//     String barrio1,
//     String barrioError1,
//     String relation1,
//     String relationError1,
//     String familyNameError2,
//     String givenNameError2,
//     String barrio2,
//     String barrioError2,
//     String relation2,
//     String relationError2,
//     List<String> barriosList,
//     List<String> relationList,
//   }) = _ContactRegistrationState;

//   factory ContactRegistrationState.initial(Patient patient) =>
//       ContactRegistrationState(
//         patient: patient,
//         barrio1: patient.contact != null
//             ? districtFromAddress([patient.contact[0].address])
//             : 'Neighborhood',
//         barrioError1: '',
//         relation1: patient.contact != null
//             ? getPatientContactType(patient.contact)
//             : 'Relationship',
//         relationError1: '',
//         barrio2: 'Neighborhood',
//         barrioError2: '',
//         relation2: 'Relationship',
//         relationError2: '',
//         barriosList: barrios,
//         relationList: relationship_types,
//       );
// }
