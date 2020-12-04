import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/action_button.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';

import '../../../controllers/local/registration/contact_registration_controller.dart';
import '../../../localization.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'widgets/barrio.dart';
import 'widgets/names.dart';
import 'widgets/relation.dart';

class ContactRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final ContactRegistrationController controller =
        Get.put(ContactRegistrationController());

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: VigorAppBar(title: labels.general.contacts),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Center(
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  NamesInputWidget(
                    familyName: controller.familyName,
                    givenName: controller.givenName,
                    familyNameError: controller.familyNameError,
                    givenNameError: controller.givenNameError,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BarrioWidget(
                        barriosList: controller.barriosList,
                        displayBarrio: controller.barrio,
                        setBarrio: controller.barrioEvent,
                        dispBarrioError: controller.barrioError,
                      ),
                      RelationWidget(
                        relationList: controller.relationList,
                        displayRelation: controller.relation,
                        setRelation: controller.relationEvent,
                        dispRelationError: controller.relationError,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.blue[900],
                    thickness: 0,
                  ),
                  ActionButton(
                    buttonText: labels.registration.registerPatient,
                    onPressed: controller.registerEvent,
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
