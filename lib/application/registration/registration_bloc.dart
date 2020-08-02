import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/domain/registration/i_registration_facade.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IRegistrationFacade _registrationFacade;

  RegistrationBloc(this._registrationFacade)
      : super(RegistrationState.initialPatient());

  RegistrationState get initialPatient => RegistrationState.initialPatient();
  RegistrationState get initialContacts => RegistrationState.initialContacts();

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    yield* event.map(
      registerPressed: (e) async* {
        yield state.copyWith(
            // family: RegistrationName(e.)
            );
      },
      updatePressed: (e) async* {},
      addContacts: (e) async* {},
      updateContacts: (e) async* {},
    );
  }
}

//   @override
//   Stream<LoginFormState> mapEventToState(
//     LoginFormEvent event,
//   ) async* {
//     yield* event.map(
//       signInWithUsernameAndPasswordPressed: (e) async* {
//         yield* _performActionOnAuthFacadeWithUsernameAndPassword(
//           _authFacade.signInWithUsernameAndPassword,
//         );
//       },
//     );
//   }

//   Stream<LoginFormState> _performActionOnAuthFacadeWithUsernameAndPassword(
//     Future<Either<AuthFailure, Unit>> Function({
//       @required Username username,
//       @required Password password,
//     })
//         forwardedCall,
//   ) async* {
//     Either<AuthFailure, Unit> failureOrSuccess;

//     final isUsernameValid = state.username.isValid();
//     final isPasswordValid = state.password.isValid();

//     if (isUsernameValid && isPasswordValid) {
//       yield state.copyWith(
//         isSubmitting: true,
//         authFailureOrSuccessOption: none(),
//       );

//       failureOrSuccess = await _authFacade.signInWithUsernameAndPassword(
//         username: state.username,
//         password: state.password,
//       );
//     }
//     yield state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//       authFailureOrSuccessOption: optionOf(failureOrSuccess),
//     );
//   }
// }
