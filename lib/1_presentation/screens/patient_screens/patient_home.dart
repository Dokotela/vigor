import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/patient_home/patient_home_controller.dart';

import 'widgets/info_banner.dart';

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  onPressed: () => controller.editPatient(),
                  child: InfoBannerWidget(
                    lastCommaFirstName: controller.name(),
                    id: controller.id(),
                    birthDate: controller.birthDate(),
                    sex: controller.sex(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ActionButton(
                        fileName: 'deworming',
                        buttonText: 'Deworming'.tr,
                        nextPage: null,
                        getFunc: controller.parasiteScreen),
                    ActionButton(
                        fileName: 'vaccine',
                        buttonText: 'Immunization'.tr,
                        nextPage: null,
                        getFunc: controller.immunizationScreen),
                  ],
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
