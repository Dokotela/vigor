import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/local/patient_home/patient_home_controller.dart';
import 'package:vigor/routes/routes.dart';
import 'package:vigor/ui/styled_components/action_button.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';
import 'package:vigor/ui/styled_components/bottom_navigation_bar.dart';
import 'package:vigor/ui/styled_components/info_banner.dart';

import '../../../localization.dart';

class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final PatientHomeController controller = Get.put(PatientHomeController());

    return Scaffold(
      appBar: VigorAppBar(title: labels.vigor.title),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InfoBannerWidget(
              id: controller.id(),
              birthDate: controller.birthDate(),
              relativeAge: controller.relativeAge(),
              sex: controller.sex(),
            ),
            // ActionButton(
            //   buttonText: labels.general.newPatient,
            //   onPressed: () => Get.toNamed(AppRoutes.PATIENT_REGISTRATION),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: homeBottomAppBar,
    );
  }
}
