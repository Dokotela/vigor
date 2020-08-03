import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';

part 'contact_registration_event.dart';
part 'contact_registration_state.dart';

part 'contact_registration_bloc.freezed.dart';

class ContactRegistrationBloc
    extends Bloc<ContactRegistrationEvent, ContactRegistrationState> {
  ContactRegistrationBloc() : super(ContactRegistrationInitial());

  @override
  Stream<ContactRegistrationState> mapEventToState(
    ContactRegistrationEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
