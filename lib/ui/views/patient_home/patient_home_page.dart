import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/patient_home/patient_home_controller.dart';
import '../../../ui/styled_components/action_button.dart';
import '../../../ui/styled_components/app_bar.dart';
import '../../../ui/styled_components/bottom_navigation_bar.dart';
import '../../../ui/styled_components/info_banner.dart';
import '../../localization.dart';

class PatientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context)!;
    final PatientHomeController controller = Get.put(PatientHomeController())!;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VigorAppBar(title: labels.pages.patientHome),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.edit,
                      color: Get.theme!.colorScheme.onBackground),
                  onPressed: () => controller.editPatient(),
                ),
                InfoBannerWidget(
                  name: controller.name(),
                  id: controller.id(),
                  birthDate: controller.birthDate(),
                  relativeAge: controller.relativeAge(),
                  sex: controller.sex(),
                ),
              ],
            ),
            Divider(color: Get.theme!.colorScheme.primary, thickness: 2.0),
            SizedBox(height: 40.0),
            ActionButton(
              buttonText: labels.medical.immunizations,
              onPressed: () => controller.immPage(),
            ),
            SizedBox(height: 40.0),
            ActionButton(
              buttonText: labels.medical.deworming,
              onPressed: () => null,
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}
