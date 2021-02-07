import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/thin_action_button.dart';
import 'package:vigor/ui/styled_components/drop_down_selection.dart';

import '../../../../controllers/local/new_patient/new_patient_controller.dart';
import '../../../localization.dart';
import '../../../styled_components/app_bar.dart';
import '../../../styled_components/bottom_navigation_bar.dart';
import '../widgets/birthDate.dart';
import '../widgets/names.dart';

class NewPatientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewPatientController());
    final labels = AppLocalizations.of(context);

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: VigorAppBar(
            title: controller.newPatient
                ? labels.pages.newPatient
                : labels.pages.patientInformation),
        body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: Container(
            child: Center(
              child: Container(
                width: Get.width * .7,
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
                      DropDownSelection(
                        title: labels.gender.title,
                        selectionList: controller.genderTypes,
                        display: controller.gender,
                        selectNew: controller.setGender,
                        error: controller.genderError,
                      ),

                      /// reusable widget for entering birthdate, arguments are
                      /// controller function to choose birthdate, the current
                      /// birthdate, the birthdate as a String, and then an error
                      /// message
                      BirthDateWidget(
                        birthDate: controller.birthDate,
                        chooseBirthDate: controller.chooseBirthDate,
                        displayBirthDate: controller.displayBirthDate,
                        dispBirthDateError: controller.birthDateError,
                      ),

                      /// reusable widget for selecting neighborhood, includes the
                      /// list of neighborhoods, which one to display, the event
                      /// to change it, and the error message
                      DropDownSelection(
                        title: labels.address.neighborhood.title,
                        selectionList: controller.barriosList,
                        display: controller.barrio,
                        selectNew: controller.selectBarrio,
                        error: controller.barrioError,
                      ),

                      SizedBox(height: Get.height / 15),

                      /// button to register patient
                      ThinActionButton(
                        buttonText: labels.actions.save,
                        onPressed: () async {
                          final saveAttempt = await controller.save();
                          saveAttempt.fold(
                            (l) => Get.snackbar('Error', l.error),
                            (r) async {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    controller.completeRegistration();
                                  });
                                  return AlertDialog(
                                    title: Text(labels.registration.completed),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar(),
      ),
    );
  }
}
