import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/application/registration/patient_registration/patient_registration_controller.dart';

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
            GetBuilder<PatientRegistrationController>(
              builder: (_) => TextField(
                controller: regController.familyName,
                decoration: InputDecoration(
                  hintText: 'Family Name'.tr,
                  errorText: regController?.family?.value?.toString() ?? '',
                ),
              ),
            ),
          ],
        ),

        // Column(
        //   children: <Widget>[
        //     Text(' Sex at birth'.tr),
        //     RadioListTile(
        //       value: 'female',
        //       groupValue: regController.gender,
        //       onChanged: (_) => regController.setFemaleGender(),
        //     ),
        //     Text('female'.tr),
        //     RadioListTile(
        //       value: 'male',
        //       groupValue: regController.gender,
        //       onChanged: (_) => regController.setMaleGender(),
        //     ),
        //     Text('male'.tr),
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => regController.register(),
        child: Icon(Icons.add),
      ),
      //   body: BlocProvider(
      //       create: (context) => PatientRegistrationBloc(),
      //       child: RegistrationForm()),
    );
  }
}
