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

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Patient Contacts'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  NamesInputWidget(
                    familyName: controller.familyName1,
                    givenName: controller.givenName1,
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
                    familyName: controller.familyName2,
                    givenName: controller.givenName2,
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
