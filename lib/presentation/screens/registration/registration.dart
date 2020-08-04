import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vigor/application/registration/patient_registration/patient_registration_bloc.dart';
import 'package:vigor/presentation/shared/shared.dart';

import 'registration_form.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(AppLocalizations.of(context).translate('Patient Information')),
      ),
      body: BlocProvider(
          create: (context) => PatientRegistrationBloc(),
          child: RegistrationForm()),
    );
  }
}
