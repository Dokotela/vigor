import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views.dart';
import 'patient_search_button_controller.dart';

class PatientSearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientSearchController>(
      init: PatientSearchController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('title'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Flexible(
                    flex: 20,
                    child: TextFormField(
                      controller: controller.searchName,
                      decoration: InputDecoration(
                        hintText: 'Search Name'.tr,
                      ),
                      onChanged: (value) => controller.searchPatientsByName(),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60.0,
                    width: 130.0,
                    child: RaisedButton(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      onPressed: () => Get.to(PatientRegistrationScreen()),
                      child: Text(
                        'Register New Patient'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 4.0,
                color: Colors.blue[900],
              ),
              GetBuilder<PatientSearchButtonController>(
                init: PatientSearchButtonController(),
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Filter'.tr, style: const TextStyle(fontSize: 30.0)),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue[600]),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        color: _.color1,
                        onPressed: () => _.switchColor1(),
                        child: const Text('Deworming')),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue[600]),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        color: _.color2,
                        onPressed: () => _.switchColor2(),
                        child: const Text('Vaccines')),
                  ],
                ),
              ),
              Divider(
                thickness: 4.0,
                color: Colors.blue[900],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: Get.width / 3,
                    child: RaisedButton(
                      onPressed: () => controller.sortCurrentPatientsByName(),
                      child: Text(
                        'Name'.tr,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width / 5,
                    child: RaisedButton(
                      onPressed: () => controller.sortPatientsByBirthDate(),
                      child: Text(
                        'Birthdate'.tr,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width / 5,
                    child: RaisedButton(
                      onPressed: () => controller.sortPatientsByBarrio(),
                      child: Text(
                        'Neighborhood'.tr,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 4.0,
                color: Colors.transparent,
              ),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    itemCount: controller.currentListLength,
                    separatorBuilder: (context, index) => Divider(
                      thickness: 1.0,
                      color: Colors.blue[900],
                    ),
                    itemBuilder: (context, index) => FlatButton(
                      onPressed: () => controller.selectPatient(index),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: Get.width / 3,
                            child: Text(
                              controller.patientName(index),
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Container(
                            width: Get.width / 5,
                            child: Text(
                              controller.patientDob(index),
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Container(
                            width: Get.width / 5,
                            child: Text(
                              controller.patientBarrio(index),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
