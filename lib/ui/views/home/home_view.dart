import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/extended_widgets/bottom_navigation_bar.dart';
import '../../styled_components/action_button.dart';
import '../views.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'title'.tr,
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
              onPressed: () => Get.to(PatientRegistrationView()),
            ),
            ActionButton(
              buttonText: 'All Patients', //todo: translate
              onPressed: () => Get.to(PatientSearchView()),
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
