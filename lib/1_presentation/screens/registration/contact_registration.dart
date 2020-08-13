import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                  familyName: controller.contact1.familyName,
                  givenName: controller.contact1.givenName,
                  familyNameError: controller.contact1.familyError,
                  givenNameError: controller.contact1.givenError,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BarrioWidget(
                      barriosList: controller.barriosList,
                      displayBarrio: controller.contact1.barrio,
                      setBarrio: controller.setBarrio1,
                      dispBarrioError: controller.contact1.barrioError,
                    ),
                    RelationWidget(
                      relationList: controller.relationList,
                      displayRelation: controller.contact1.relation,
                      setRelation: controller.setRelation1,
                      dispRelationError: controller.contact1.relationError,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blue[900],
                  thickness: 10,
                ),
                NamesInputWidget(
                  familyName: controller.contact2.familyName,
                  givenName: controller.contact2.givenName,
                  familyNameError: controller.contact2.familyError,
                  givenNameError: controller.contact2.givenError,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BarrioWidget(
                      barriosList: controller.barriosList,
                      displayBarrio: controller.contact2.barrio,
                      setBarrio: controller.setBarrio1,
                      dispBarrioError: controller.contact2.barrioError,
                    ),
                    RelationWidget(
                      relationList: controller.relationList,
                      displayRelation: controller.contact2.relation,
                      setRelation: controller.setRelation1,
                      dispRelationError: controller.contact2.relationError,
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
