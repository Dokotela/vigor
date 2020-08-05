import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/application/controllers/registration/patient_registration_controller.dart';

class Registration extends StatelessWidget {
  final PatientRegistrationController regController =
      Get.put(PatientRegistrationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Information'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: regController.familyName,
              decoration: const InputDecoration(
                hintText: 'Family Name',
                errorText: '',
              ),
            ),
            // Radio(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Get.find<PatientRegistrationController>().changeLastName(),
        child: Icon(Icons.add),
      ),
      //   body: BlocProvider(
      //       create: (context) => PatientRegistrationBloc(),
      //       child: RegistrationForm()),
    );
  }
}
