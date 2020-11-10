// part of 'patient_registration_controller.dart';

// @freezed
// abstract class PatientRegistrationState with _$PatientRegistrationState {
//   const factory PatientRegistrationState({
//     String familyNameError,
//     String givenNameError,
//     String gender,
//     DateTime birthDate,
//     String birthDateError,
//     String barrio,
//     String barrioError,
//     Patient patient,
//     List<String> barriosList,
//   }) = _PatientRegistrationState;

//   factory PatientRegistrationState.initial() => PatientRegistrationState(
//         birthDateError: '',
//         barrioError: '',
//         barriosList: barrios,
//         patient: Patient(resourceType: 'Patient'),
//         barrio: 'Neighborhood',
//         gender: 'female',
//         birthDate: DateTime(
//             DateTime.now().year, DateTime.now().month, DateTime.now().day + 1),
//       );

//   factory PatientRegistrationState.update(Patient patient) =>
//       PatientRegistrationState(
//         birthDateError: '',
//         barrioError: '',
//         patient: patient,
//         barriosList: barrios,
//         gender: patient?.gender == null
//             ? 'female'
//             : basicEnumToString(patient.gender),
//         birthDate: patient?.birthDate == null
//             ? DateTime(DateTime.now().year, DateTime.now().month,
//                 DateTime.now().day + 1)
//             : DateTime.parse(patient.birthDate.toString()),
//         barrio: districtFromAddress(patient?.address),
//       );
// }
