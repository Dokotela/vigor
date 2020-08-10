import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/4_infrastructure/fhir_db/resource_dao.dart';

import '../screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
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
                    nextPage: PatientRegistration()),
                ActionButton(
                    fileName: 'search',
                    buttonText: 'Search'.tr,
                    nextPage: HomeScreen()),
                ActionButton(
                    fileName: 'deworming',
                    buttonText: 'Deworming'.tr,
                    nextPage: HomeScreen()),
                ActionButton(
                    fileName: 'vaccine',
                    buttonText: 'Immunization'.tr,
                    nextPage: HomeScreen()),
                ActionButton(
                    fileName: 'growth1',
                    buttonText: 'Growth'.tr,
                    nextPage: HomeScreen()),
                ActionButton(
                    fileName: 'sync',
                    buttonText: 'Sync'.tr,
                    nextPage: HomeScreen()),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  onPressed: () async {
                    print(await ResourceDao()
                        .getAllSortedById(resourceType: 'Patient'));
                  },
                  child: Text('Print Db'.tr),
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
