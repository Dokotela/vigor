import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/patient_home/patient_home_controller.dart';

class PatientHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientHomeController>(
      init: PatientHomeController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('title'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () => controller.editPatient(),
                  child: Column(
                    children: [
                      Text('${"Name".tr}: ${controller.patientName()}'),
                      Text('${"ID"}: ${controller.patientId()}'),
                      Text(
                          '${"Birthdate".tr}: ${controller.patientBirthDate()}'),
                      Text('${"Sex".tr}: ${controller.patientSex()}')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
