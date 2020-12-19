import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../localization.dart';
import '../../../routes/routes.dart';
import '../../../ui/styled_components/app_bar.dart';
import '../../../ui/styled_components/bottom_navigation_bar.dart';
import '../../styled_components/action_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Scaffold(
      appBar: VigorAppBar(title: labels.app.title.saluddominicana),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Registration for a new patient
            ActionButton(
              buttonText: labels.pages.newPatient,
              onPressed: () => Get.toNamed(AppRoutes.NEW_PATIENT),
            ),

            /// Search the patients stored on the device
            ActionButton(
              buttonText: labels.pages.allPatients,
              onPressed: () => Get.toNamed(AppRoutes.ALL_PATIENTS),
            ),
            ActionButton(
              buttonText: labels.pages.summaryReport,
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }
}
