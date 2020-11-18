import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/patient_screens/patient_home_controller.dart';
import '../../../localization.dart';
import '../../../ui/styled_components/bottom_navigation_bar.dart';
import 'widgets/info_banner.dart';
import 'widgets/patient_growth_curve.dart';
import 'widgets/patient_imm_hx.dart';

class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final PatientHomeController controller = Get.put(PatientHomeController());

    return Scaffold(
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
                  PatientImmHx(),
                  // Center(child: Text('Vaccines Screen')),
                  PatientGrowthCurve(),
                  const Center(child: Text('Milestones Screen')),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}

Widget _buildTab(String text) {
  return Tab(
    child: Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[50])),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
