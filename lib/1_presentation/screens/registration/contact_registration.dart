import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/home/home.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/registration/contact_registration_controller.dart';

import 'widgets/barrio.dart';
import 'widgets/names.dart';
import 'widgets/relation.dart';

class ContactRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactRegistrationController>(
      init: ContactRegistrationController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Patient Contacts'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                NamesInputWidget(
                  familyName: controller
                      .getFamilyTextController(controller.getContact1()),
                  givenName: controller
                      .getGivenTextController(controller.getContact1()),
                  familyNameError:
                      controller.dispFamilyNameError(controller.getContact1()),
                  givenNameError:
                      controller.dispGivenNameError(controller.getContact1()),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BarrioWidget(
                      barriosList: controller.barriosList,
                      displayBarrio:
                          controller.displayBarrio(controller.getContact1()),
                      setBarrio: controller.setBarrio1,
                      dispBarrioError:
                          controller.dispBarrioError(controller.getContact1()),
                    ),
                    RelationWidget(
                      relationList: controller.relationList,
                      displayRelation:
                          controller.displayRelation(controller.getContact1()),
                      setRelation: controller.setRelation1,
                      dispRelationError: controller
                          .dispRelationError(controller.getContact1()),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blue[900],
                  thickness: 10,
                ),
                NamesInputWidget(
                  familyName: controller
                      .getFamilyTextController(controller.getContact2()),
                  givenName: controller
                      .getGivenTextController(controller.getContact2()),
                  familyNameError:
                      controller.dispFamilyNameError(controller.getContact2()),
                  givenNameError:
                      controller.dispGivenNameError(controller.getContact2()),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BarrioWidget(
                      barriosList: controller.barriosList,
                      displayBarrio:
                          controller.displayBarrio(controller.getContact2()),
                      setBarrio: controller.setBarrio2,
                      dispBarrioError:
                          controller.dispBarrioError(controller.getContact2()),
                    ),
                    RelationWidget(
                      relationList: controller.relationList,
                      displayRelation:
                          controller.displayRelation(controller.getContact2()),
                      setRelation: controller.setRelation2,
                      dispRelationError: controller
                          .dispRelationError(controller.getContact2()),
                    ),
                  ],
                ),
                ButtonTheme(
                  minWidth: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () => controller.registerContacts(),
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
