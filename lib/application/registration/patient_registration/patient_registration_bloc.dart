import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

part 'patient_registration_event.dart';
part 'patient_registration_state.dart';

part 'patient_registration_bloc.freezed.dart';

class PatientRegistrationBloc
    extends Bloc<PatientRegistrationEvent, PatientRegistrationState> {
  PatientRegistrationBloc() : super(PatientRegistrationInitial());

  @override
  Stream<PatientRegistrationState> mapEventToState(
    PatientRegistrationEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
