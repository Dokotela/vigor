import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';

import '../../../controllers/local/patient_search/patient_search_controller.dart';
import '../../../localization.dart';
import '../../styled_components/bottom_navigation_bar.dart';

class PatientSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final controller = Get.put(PatientSearchController());
    final searchName = TextEditingController();
    final _padding = EdgeInsets.fromLTRB(0, 0, 0, 0);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VigorAppBar(title: labels.general.search.search),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Icon(Icons.search),
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
                      'New Patient',
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
                  width: Get.width / 4,
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
                    child: Icon(Icons.location_on_outlined),
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
                          padding: _padding,
                          width: Get.width / 3,
                          child: Text(
                            controller.patientName(index),
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Container(
                          padding: _padding,
                          width: Get.width / 4,
                          child: Text(
                            controller.patientDob(index),
                            style: const TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: _padding,
                          width: Get.width / 5,
                          child: Text(
                            controller.patientBarrio(index),
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
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
