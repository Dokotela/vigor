// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:vigor/domain/auth/auth_failure.dart';
// import 'package:vigor/domain/auth/i_auth_facade.dart';
// import 'package:vigor/domain/auth/auth_value_objects.dart';

// part 'login_form_event.dart';
// part 'login_form_state.dart';

// part 'login_form_bloc.freezed.dart';

// class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
//   final IAuthFacade _authFacade;

//   LoginFormBloc(this._authFacade) : super(LoginFormState.initial());

//   LoginFormState get initialState => LoginFormState.initial();

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
