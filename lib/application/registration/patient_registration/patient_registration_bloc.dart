// import 'package:dartz/dartz.dart';
// import 'package:fhir/fhir_r4.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:vigor/domain/registration/patient_registration/i_patient_registration_facade.dart';
// import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
// import 'package:vigor/domain/registration/registration_failure.dart';
// import 'package:vigor/domain/registration/registration_value_objects.dart';

// part 'patient_registration_event.dart';
// part 'patient_registration_state.dart';

// part 'patient_registration_bloc.freezed.dart';

// class PatientRegistrationBloc
//     extends Bloc<PatientRegistrationEvent, PatientRegistrationState> {
//   final IPatientRegistrationFacade _patientRegistrationFacade;

//   PatientRegistrationBloc(this._patientRegistrationFacade)
//       : super(PatientRegistrationState.initial());

//   PatientRegistrationState get initialState =>
//       PatientRegistrationState.initial();

//   @override
//   Stream<PatientRegistrationState> mapEventToState(
//     PatientRegistrationEvent event,
//   ) async* {
//     yield* event.map(
//       registerPressed: (e) async* {
//         yield* _actOnPatientRegistrationFacade(
//             _patientRegistrationFacade.register);
//       },
//       updatePressed: (e) async* {
//         yield* _actOnPatientRegistrationFacade(
//             _patientRegistrationFacade.update);
//       },
//     );
//   }

//   Stream<PatientRegistrationState> _actOnPatientRegistrationFacade(
//     Future<Either<RegistrationFailure, Unit>> Function({
//       Patient patient,
//       @required RegistrationName family,
//       @required RegistrationName given,
//       @required RegistrationGender gender,
//       @required RegistrationBirthDate birthDate,
//       @required RegistrationBarrio barrio,
//     })
//         forwardedCall,
//   ) async* {
//     Either<RegistrationFailure, Unit> failureOrSuccess;

//     final isFamilyValid = state.family.isValid();
//     final isGivenValid = state.given.isValid();
//     final isGenderValid = state.gender.isValid();
//     final isBirthDateValid = state.birthDate.isValid();
//     final isBarrioValid = state.barrio.isValid();

//     if (isFamilyValid &&
//         isGivenValid &&
//         isGenderValid &&
//         isBirthDateValid &&
//         isBarrioValid) {
//       yield state.copyWith(
//         isSubmitting: true,
//         registrationFailureOrSuccessOption: none(),
//       );

//       failureOrSuccess = await forwardedCall(
//         patient: state.patient,
//         family: state.family,
//         given: state.given,
//         gender: state.gender,
//         birthDate: state.birthDate,
//         barrio: state.barrio,
//       );
//     }

//     yield state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//       registrationFailureOrSuccessOption: optionOf(failureOrSuccess),
//     );
//   }
// }
