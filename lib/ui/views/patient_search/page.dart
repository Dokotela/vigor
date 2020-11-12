import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/bottom_navigation_bar.dart';

import '../../../controllers/local/patient_search/controller.dart';
import 'view_controller.dart';

class PatientSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PatientSearchViewController viewController = Get.find();
    final PatientSearchController stateController = Get.find();

    return Scaffold(
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
                    controller: stateController.searchName,
                    decoration: InputDecoration(
                      hintText: 'Search Name'.tr,
                    ),
                    onChanged: (value) => stateController.event(
                        PatientSearchEvent.searchPatientByName(name: value)),
                  ),
                ),
                const Spacer(),
                // Container(
                //   height: 60.0,
                //   width: 130.0,
                //   child: RaisedButton(
                //     color: Colors.grey,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(16.0),
                //     ),
                //     onPressed: () => Get.to(PatientRegistrationView()),
                //     child: Text(
                //       'Register New Patient'.tr,
                //       textAlign: TextAlign.center,
                //       style: const TextStyle(fontSize: 18.0),
                //     ),
                //   ),
                // ),
              ],
            ),
            Divider(
              thickness: 4.0,
              color: Colors.blue[900],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Filter'.tr, style: const TextStyle(fontSize: 30.0)),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue[600]),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    color: viewController.color1,
                    onPressed: () => viewController.switchColor1(),
                    child: const Text('Deworming')),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue[600]),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    color: viewController.color2,
                    onPressed: () => viewController.switchColor2(),
                    child: const Text('Vaccines')),
              ],
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
                    onPressed: () => stateController
                        .event(const PatientSearchEvent.sortPatientsByName()),
                    child: Text(
                      'Name'.tr,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 5,
                  child: RaisedButton(
                    onPressed: () => stateController.event(
                        const PatientSearchEvent.sortPatientsByBirthdate()),
                    child: Text(
                      'Birthdate'.tr,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 5,
                  child: RaisedButton(
                    onPressed: () => stateController
                        .event(const PatientSearchEvent.sortPatientsByBarrio()),
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
                  itemCount: stateController.currentListLength,
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1.0,
                    color: Colors.blue[900],
                  ),
                  itemBuilder: (context, index) => FlatButton(
                    onPressed: () => stateController
                        .event(PatientSearchEvent.selectPatient(index: index)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: Get.width / 3,
                          child: Text(
                            stateController.patientName(index),
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          width: Get.width / 5,
                          child: Text(
                            stateController.patientDob(index),
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          width: Get.width / 5,
                          child: Text(
                            stateController.patientBarrio(index),
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
    );
  }
}
