import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/local/registration/patient_registration_controller.dart';
import '../../../../localization.dart';
import '../../../../ui/styled_components/bottom_navigation_bar.dart';
import '../widgets/barrio.dart';
import '../widgets/birthDate.dart';
import '../widgets/gender.dart';
import '../widgets/names.dart';

class PatientRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final PatientRegistrationController controller = Get.find();
    final familyName =
        TextEditingController(text: controller.initialFamilyName);
    final givenName = TextEditingController(text: controller.initialGivenName);

    return Scaffold(
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
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  NamesInputWidget(
                    familyName: familyName,
                    givenName: givenName,
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

                      /// ToDo: add back in names
                      onPressed: () => controller.registerEvent(
                          familyName: familyName.text,
                          givenName: givenName.text),
                      child: Text('Register Patient'.tr),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
