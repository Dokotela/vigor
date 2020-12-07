import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/new_patient/patient_registration_controller.dart';
import '../../../ui/styled_components/app_bar.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'widgets/barrio.dart';
import 'widgets/birthDate.dart';
import 'widgets/gender.dart';
import 'widgets/names.dart';

class PatientRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PatientRegistrationController());

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:
            VigorAppBar(title: controller.labels.general.patientInformation),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  /// reusable widget for entering first and last names, is
                  /// passed 2 text controllers, and the error messages for each
                  NamesInputWidget(
                    familyName: controller.familyName,
                    givenName: controller.givenName,
                    familyNameError: controller.familyNameError,
                    givenNameError: controller.givenNameError,
                  ),

                  /// reusable widget for entering gender at birth, is passed a
                  /// boolean (true = female, false = male), and then the
                  /// controller function to change it
                  GenderSelectionWidget(
                    curGender: controller.gender,
                    setGender: controller.genderEvent,
                    genderError: controller.genderError,
                  ),

                  /// reusable widget for entering birthdate, arguments are
                  /// controller function to choose birthdate, the current
                  /// birthdate, the birthdate as a String, and then an error
                  /// message
                  BirthDateWidget(
                    chooseBirthDate: controller.birthDateEvent,
                    currentBirthDate: controller.birthDate,
                    displayBirthDate: controller.birthDateString,
                    dispBirthDateError: controller.birthDateError,
                  ),

                  /// reusable widget for selecting neighborhood, includes the
                  /// list of neighborhoods, which one to display, the event
                  /// to change it, and the error message
                  BarrioWidget(
                    barriosList: controller.barriosList,
                    displayBarrio: controller.barrio,
                    setBarrio: controller.barrioEvent,
                    dispBarrioError: controller.barrioError,
                  ),

                  /// button to register patient
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      onPressed: () => controller.registerEvent(),
                      child: Text(
                        controller.labels.general.nextPage,
                        style: Get.textTheme.bodyText1
                            .copyWith(color: Colors.white),
                      ),
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
