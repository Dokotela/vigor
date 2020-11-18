import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    final familyName1 =
        TextEditingController(text: controller.initialFamilyName1);
    final givenName1 =
        TextEditingController(text: controller.initialGivenName1);
    final familyName2 =
        TextEditingController(text: controller.initialFamilyName2);
    final givenName2 =
        TextEditingController(text: controller.initialGivenName2);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Patient Contacts'.tr),
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
                    familyName: familyName1,
                    givenName: givenName1,
                    familyNameError: controller.familyNameError1,
                    givenNameError: controller.givenNameError1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BarrioWidget(
                        barriosList: controller.barriosList,
                        displayBarrio: controller.barrio1,
                        setBarrio: controller.barrio1Event,
                        dispBarrioError: controller.barrioError1,
                      ),
                      RelationWidget(
                        relationList: controller.relationList,
                        displayRelation: controller.relation1,
                        setRelation: controller.relation1Event,
                        dispRelationError: controller.relationError1,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.blue[900],
                    thickness: 10,
                  ),
                  NamesInputWidget(
                    familyName: familyName2,
                    givenName: givenName2,
                    familyNameError: controller.familyNameError2,
                    givenNameError: controller.givenNameError2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BarrioWidget(
                        barriosList: controller.barriosList,
                        displayBarrio: controller.barrio2,
                        setBarrio: controller.barrio2Event,
                        dispBarrioError: controller.barrioError2,
                      ),
                      RelationWidget(
                        relationList: controller.relationList,
                        displayRelation: controller.relation2,
                        setRelation: controller.relation2Event,
                        dispRelationError: controller.relationError2,
                      ),
                    ],
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      onPressed: () => controller.registerEvent(
                        familyName1: familyName1.text,
                        givenName1: givenName1.text,
                        familyName2: familyName2.text,
                        givenName2: givenName2.text,
                      ),
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
