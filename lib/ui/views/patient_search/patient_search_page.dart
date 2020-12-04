import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';

import '../../../controllers/local/patient_search/patient_search_controller.dart';
import '../../../localization.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'patient_search_view_controller.dart';

class PatientSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final viewController = Get.put(PatientSearchViewController());
    final controller = Get.put(PatientSearchController());
    final searchName = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(labels.app.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Flexible(
                  flex: 20,
                  child: TextFormField(
                    controller: searchName,
                    decoration: InputDecoration(
                      hintText: labels.general.search.searchName,
                    ),
                    onChanged: (value) => controller.searchPatientByName(value),
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
                    onPressed: () =>
                        Get.toNamed(AppRoutes.PATIENT_REGISTRATION),
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
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(labels.general.search.filter,
                      style: const TextStyle(fontSize: 30.0)),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue[600]),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: viewController.color1,
                      onPressed: () => viewController.switchColor1(),
                      child: Text(labels.medical.deworming)),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue[600]),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: viewController.color2,
                      onPressed: () => viewController.switchColor2(),
                      // todo: handle singular/pleural as extension
                      /// spec: https://github.com/aloisdeniel/flutter_sheet_localization
                      child: Text(labels.medical.vaccines.title)),
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
                    onPressed: () => controller.sortByName(),
                    child: Text(
                      labels.general.name.name,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 5,
                  child: RaisedButton(
                    onPressed: () => controller.sortByBirthdate(),
                    child: Text(
                      labels.general.birthDate,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 5,
                  child: RaisedButton(
                    onPressed: () => controller.sortByBarrio(),
                    child: Text(
                      labels.general.address.neighborhood,
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
    );
  }
}
