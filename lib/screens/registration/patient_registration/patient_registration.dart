import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/screens/registration/patient_registration/patient_registration_controller.dart';
import 'package:vigor/shared_widgets/shared_widgets.dart';
import 'package:vigor/themes/themes.dart';

class Registration extends StatelessWidget {
  final PatientRegistrationController regController =
      Get.put(PatientRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Information'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  GetBuilder<PatientRegistrationController>(
                    builder: (_) => TextFormField(
                      controller: regController.familyName,
                      decoration: InputDecoration(
                        hintText: 'Family Name'.tr,
                        errorText: regController?.family?.value?.toString(),
                      ),
                    ),
                  ),
                  GetBuilder<PatientRegistrationController>(
                    builder: (_) => TextFormField(
                      controller: regController.givenName,
                      decoration: InputDecoration(
                        hintText: 'Other Names'.tr,
                        errorText: regController?.family?.value?.toString(),
                      ),
                    ),
                  ),
                ],
              ),
              GetBuilder<PatientRegistrationController>(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Sex at birth'.tr),
                    Radio(
                      value: 'female',
                      groupValue: regController.gender,
                      onChanged: (String _) => regController.setFemaleGender(),
                    ),
                    Text('female'.tr),
                    Radio(
                      value: 'male',
                      groupValue: regController.gender,
                      onChanged: (String _) => regController.setMaleGender(),
                    ),
                    Text('male'.tr),
                  ],
                ),
              ),
              RaisedButton(
                color: ThemeClass.dark().backgroundColor,
                onPressed: () => showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(const Duration(days: 1)),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2999, 12, 31),
                ).then((date) => regController.chooseBirthDate(date)),
                child: GetBuilder<PatientRegistrationController>(
                  builder: (_) => Text(
                    '${"Date of Birth".tr} ${regController?.dispBirthDate ?? ''}',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => regController.register(),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
