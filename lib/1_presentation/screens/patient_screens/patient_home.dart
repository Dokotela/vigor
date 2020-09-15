import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/patient_screens/widgets/patient_growth_curve.dart';
import 'package:vigor/1_presentation/screens/patient_screens/widgets/patient_immunizations.dart';
import 'package:vigor/1_presentation/theme/theme.dart';
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
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.white,
                onPressed: () => controller.editPatient(),
                child: InfoBannerWidget(
                  lastCommaFirstName: controller.name(),
                  id: controller.id(),
                  birthDate: controller.birthDate(),
                  relativeAge: controller.relativeAge(),
                  sex: controller.sex(),
                ),
              ),
              TabBar(
                controller: controller.tabController,
                tabs: <Widget>[
                  ...controller.tabsList().map((e) => _buildTab(e)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: <Widget>[
                    PatientGrowthCurve(),
                    Center(child: Text('Milestones Screen')),
                    // Center(child: Text('Vaccines Screen')),
                    PatientImmunizations(),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}

Widget _buildTab(String text) {
  return Tab(
    child: Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: AppColors.gray5)),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
