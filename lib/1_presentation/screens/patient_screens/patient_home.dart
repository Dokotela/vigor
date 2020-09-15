import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
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
        body: Column(
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
                children: const <Widget>[
                  Tab(text: 'Growth Curve Screen'),
                  Tab(text: 'Milestones Screen'),
                  Tab(text: 'Vaccines Screen'),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}

Widget _buildTab(String text) {
  return Container(
    height: 52,
    width: double.infinity,
    decoration: BoxDecoration(border: Border.all(color: AppColors.gray5)),
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
