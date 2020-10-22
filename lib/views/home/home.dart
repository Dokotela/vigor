import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/views/patient_search/patient_search.dart';
import 'package:vigor/views/widgets/shared_widgets.dart';

import '../screens.dart';

class HomeScreen extends StatelessWidget {
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
              onPressed: () => Get.to(PatientRegistrationScreen()),
            ),
            ActionButton(
              buttonText: 'All Patients', //todo: translate
              onPressed: () => Get.to(PatientSearch()),
            ),
            ActionButton(
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
