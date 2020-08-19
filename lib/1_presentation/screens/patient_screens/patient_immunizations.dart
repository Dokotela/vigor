import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/patient_home/patient_immunizations_controller.dart';

import 'widgets/info_banner.dart';

class PatientImmunizations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientImmunizationsController>(
      init: PatientImmunizationsController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Immunizations'.tr),
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
                Expanded(
                  child: Obx(
                    () => ListView.separated(
                      itemCount: controller.immRecs.length,
                      separatorBuilder: (context, index) =>
                          const Divider(color: Colors.white),
                      itemBuilder: (context, index) => Container(
                        child: Text(
                          controller.vaccineRecommendation(index),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
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
