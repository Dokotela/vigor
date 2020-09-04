import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/patient_search/patient_search.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/4_infrastructure/fhir_db/resource_dao.dart';
import 'package:vigor/4_infrastructure/interfaces/i_fhir_server.dart';

import '../screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('title'.tr)),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              runAlignment: WrapAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: <Widget>[
                ActionButton(
                    fileName: 'register',
                    buttonText: 'Register'.tr,
                    nextPage: PatientRegistrationScreen(),
                    getFunc: Get.offAll),
                ActionButton(
                    fileName: 'search',
                    buttonText: 'Search'.tr,
                    nextPage: PatientSearch(),
                    getFunc: Get.offAll),
                ActionButton(
                    fileName: 'deworming',
                    buttonText: 'Deworming'.tr,
                    nextPage: HomeScreen(),
                    getFunc: Get.offAll),
                ActionButton(
                    fileName: 'vaccine',
                    buttonText: 'Immunization'.tr,
                    nextPage: HomeScreen(),
                    getFunc: Get.offAll),
                ActionButton(
                    fileName: 'growth1',
                    buttonText: 'Growth'.tr,
                    nextPage: HomeScreen(),
                    getFunc: Get.offAll),
                ActionButton(
                    fileName: 'sync',
                    buttonText: 'Sync'.tr,
                    nextPage: null,
                    getFunc: IFhirServer().syncWithServer),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  onPressed: () async {
                    await ResourceDao().deleteAllResources();
                  },
                  child: Text('Delete Db'.tr),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: homeBottomAppBar,
      ),
    );
  }
}
