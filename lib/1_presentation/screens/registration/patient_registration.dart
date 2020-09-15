import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/registration/widgets/gender.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/registration/patient_registration_bloc/patient_registration_controller.dart';

import 'widgets/barrio.dart';
import 'widgets/birthDate.dart';
import 'widgets/names.dart';

class PatientRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientRegistrationController>(
      init: PatientRegistrationController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Patient Information'.tr),
        ),
        body: GestureDetector(
          onTap: () {
            final currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  NamesInputWidget(
                    familyName: controller.familyName,
                    givenName: controller.givenName,
                    familyNameError: controller.familyNameError,
                    givenNameError: controller.givenNameError,
                  ),
                  GenderSelectionWidget(
                    curGender: controller.gender,
                    setGender: controller.genderEvent,
                  ),
                  BirthDateWidget(
                    chooseBirthDate: controller.birthDateEvent,
                    currentBirthDate: controller.birthDate,
                    displayBirthDate: controller.birthDateString,
                    dispBirthDateError: controller.birthDateError,
                  ),
                  BarrioWidget(
                    barriosList: controller.barriosList,
                    displayBarrio: controller.barrio,
                    setBarrio: controller.barrioEvent,
                    dispBarrioError: controller.barrioError,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      onPressed: () => controller.registerEvent(),
                      child: Text('Register Patient'.tr),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
