import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/patient_home/patient_home_controller.dart';
import '../../../localization.dart';
import '../../../ui/styled_components/bottom_navigation_bar.dart';
import 'widgets/info_banner.dart';
import 'widgets/patient_imm_page.dart';

class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final PatientHomeController controller = Get.put(PatientHomeController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: FlatButton(
          onPressed: () => controller.editPatient(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(controller.patient.name(),
                  style: TextStyle(color: Colors.white, fontSize: 28)),
              Icon(Icons.edit, color: Colors.white),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            FlatButton(
              color: Colors.white,
              onPressed: () => controller.editPatient(),
              child: InfoBannerWidget(
                id: controller.id(),
                birthDate: controller.birthDate(),
                relativeAge: controller.relativeAge(),
                sex: controller.sex(),
              ),
            ),
            PatientImmPage(),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
