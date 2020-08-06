// import 'package:dartz/dartz.dart';
// import 'package:fhir/fhir_r4.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:vigor/domain/registration/contact_registration/contact_registration_value_objects.dart';
// import 'package:vigor/domain/registration/contact_registration/i_contact_registration_facade.dart';
// import 'package:vigor/domain/registration/registration_failure.dart';
// import 'package:vigor/models/registration_value_objects.dart';

// part 'contact_registration_event.dart';
// part 'contact_registration_state.dart';

// part 'contact_registration_bloc.freezed.dart';

// class ContactRegistrationBloc
//     extends Bloc<ContactRegistrationEvent, ContactRegistrationState> {
//   final IContactRegistrationFacade _contactRegistrationFacade;

//   ContactRegistrationBloc(this._contactRegistrationFacade)
//       : super(ContactRegistrationState.initial());

//   ContactRegistrationState get initialState =>
//       ContactRegistrationState.initial();

//   @override
//   Stream<ContactRegistrationState> mapEventToState(
//     ContactRegistrationEvent event,
//   ) async* {
//     yield* event.map(
//       updateContacts: (e) async* {
//         yield* _actOnContactRegistrationFacade(
//             _contactRegistrationFacade.updateContacts);
//       },
//     );
//   }

//   Stream<ContactRegistrationState> _actOnContactRegistrationFacade(
//     Future<Either<RegistrationFailure, Unit>> Function({
//       @required Patient patient,
//       @required RegistrationName family1,
//       @required RegistrationName given1,
//       @required RegistrationRelation relationship1,
//       @required RegistrationBarrio barrio1,
//       RegistrationName family2,
//       RegistrationName given2,
//       RegistrationRelation relationship2,
//       RegistrationBarrio barrio2,
//       RegistrationName family3,
//       RegistrationName given3,
//       RegistrationRelation relationship3,
//       RegistrationBarrio barrio3,
//     })
//         forwardedCall,
//   ) async* {
//     Either<RegistrationFailure, Unit> failureOrSuccess;

//     final isFamily1Valid = state.family1.isValid();
//     final isGiven1Valid = state.given1.isValid();
//     final isRelation1Valid = state.relationship1.isValid();
//     final isBarrio1Valid = state.barrio1.isValid();
//     var isRelation2Valid = true;
//     var isRelation3Valid = true;

//     if (state.family2.toString() != '' ||
//         state.given2.toString() != '' ||
//         state.barrio2.toString() != '' ||
//         state.relationship2.toString() != '') {
//       isRelation2Valid = state.family2.isValid() &&
//           state.given2.isValid() &&
//           state.barrio2.isValid() &&
//           state.relationship2.isValid();
//     }
//     if (state.family3.toString() != '' ||
//         state.given3.toString() != '' ||
//         state.barrio3.toString() != '' ||
//         state.relationship3.toString() != '') {
//       isRelation3Valid = state.family3.isValid() &&
//           state.given3.isValid() &&
//           state.barrio3.isValid() &&
//           state.relationship3.isValid();
//     }

//     if (isFamily1Valid &&
//         isGiven1Valid &&
//         isRelation1Valid &&
//         isBarrio1Valid &&
//         isRelation2Valid &&
//         isRelation3Valid) {
//       yield state.copyWith(
//         isSubmitting: true,
//         registrationFailureOrSuccessOption: none(),
//       );

//       failureOrSuccess = await forwardedCall(
//         patient: state.patient,
//         family1: state.family1,
//         given1: state.given1,
//         barrio1: state.barrio1,
//         relationship1: state.relationship1,
//         family2: state.family2,
//         given2: state.given2,
//         barrio2: state.barrio2,
//         relationship2: state.relationship2,
//         family3: state.family3,
//         given3: state.given3,
//         barrio3: state.barrio3,
//         relationship3: state.relationship3,
//       );
//     }

//     yield state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//       registrationFailureOrSuccessOption: optionOf(failureOrSuccess),
//     );
//   }
// }
