import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/patient_home/patient_parasite_controller.dart';

import 'widgets/info_banner.dart';

class PatientParasite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientParasiteController>(
      init: PatientParasiteController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Parasite'.tr),
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
                    relativeAge: controller.relativeAge(),
                    sex: controller.sex(),
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
