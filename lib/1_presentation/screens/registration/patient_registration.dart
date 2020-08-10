import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/registration/widgets/gender.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/registration/patient_registration_controller.dart';

import 'widgets/barrio.dart';
import 'widgets/birthDate.dart';
import 'widgets/names.dart';

class PatientRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientRegistrationController>(
      init: PatientRegistrationController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Patient Information'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                NamesInputWidget(
                  familyName: controller.familyName,
                  givenName: controller.givenName,
                  familyNameError: controller.dispFamilyNameError(),
                  givenNameError: controller.dispGivenNameError(),
                ),
                GenderSelectionWidget(
                  curGender: controller.curGender(),
                  setFemaleGender: controller.setFemaleGender,
                  setMaleGender: controller.setMaleGender,
                ),
                BirthDateWidget(
                  chooseBirthDate: controller.chooseBirthDate,
                  displayBirthDate: controller.displayBirthDate(),
                  dispBirthDateError: controller.dispBirthDateError(),
                ),
                BarrioWidget(
                  barriosList: controller.barriosList,
                  displayBarrio: controller.displayBarrio(),
                  setBarrio: controller.setBarrio,
                  dispBarrioError: controller.dispBarrioError(),
                ),
                ButtonTheme(
                  minWidth: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () => controller.register(),
                    child: Text('Register Patient'.tr),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
