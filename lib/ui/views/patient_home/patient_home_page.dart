import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';

import '../../../controllers/local/patient_home/patient_home_controller.dart';
import '../../../ui/styled_components/bottom_navigation_bar.dart';
import '../../styled_components/info_banner.dart';
import 'patient_imm/patient_imm_page.dart';

class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PatientHomeController controller = Get.put(PatientHomeController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VigorAppBar(
        title: controller.name(),
        leading: IconButton(
          icon: const Icon(Icons.edit, color: Colors.white),
          onPressed: () => controller.editPatient(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            InfoBannerWidget(
              id: controller.id(),
              birthDate: controller.birthDate(),
              relativeAge: controller.relativeAge(),
              sex: controller.sex(),
            ),
            PatientImmPage(),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
