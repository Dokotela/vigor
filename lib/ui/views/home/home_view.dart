import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/bottom_navigation_bar.dart';
import '../../../localization.dart';
import '../../../routes/routes.dart';
import '../../styled_components/action_button.dart';
import '../views.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          labels.vigor.title,
          style: Get.theme.textTheme.headline3.apply(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Get.theme.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButton(
              buttonText: 'New Patient', //todo: translate
              onPressed: () => null, //Get.to(PatientRegistrationView()),
            ),
            ActionButton(
              buttonText: 'All Patients', //todo: translate
              onPressed: () => Get.toNamed(AppRoutes.PATIENT_SEARCH),
            ),
            const ActionButton(
              buttonText: 'My Schedule', //todo: translate
              // onPressed: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: homeBottomAppBar,
    );
  }
}
