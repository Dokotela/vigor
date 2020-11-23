import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/patient_home/patient_home_controller.dart';
import '../../../localization.dart';
import '../../../ui/styled_components/bottom_navigation_bar.dart';
import 'widgets/info_banner.dart';
import 'widgets/patient_imm_hx.dart';

class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final PatientHomeController controller = Get.put(PatientHomeController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(controller.patient.name(), style: TextStyle(fontSize: 24)),
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
            PatientImmHx(),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
