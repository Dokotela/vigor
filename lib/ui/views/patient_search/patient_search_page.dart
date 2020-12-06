import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';
import 'package:vigor/ui/styled_components/thin_action_button.dart';

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
                Expanded(
                  child: TextFormField(
                    controller: searchName,
                    decoration: InputDecoration(
                      hintText: labels.general.search.searchName,
                      hintStyle: Get.textTheme.headline5,
                    ),
                    onChanged: (value) => controller.searchPatientByName(value),
                  ),
                ),
                Icon(Icons.search, size: Get.width / 10),
              ],
            ),
            const Divider(),
            ThinActionButton(
              buttonText: labels.general.newPatient,
              onPressed: () => Get.toNamed(AppRoutes.PATIENT_REGISTRATION),
            ),
            Divider(
              thickness: 4.0,
              color: Colors.blue[900],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width / 2.6,
                  child: FlatButton(
                    onPressed: () => controller.sortByName(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          labels.general.name.name,
                          style: Get.theme.textTheme.headline6,
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 3,
                  child: FlatButton(
                    onPressed: () => controller.sortByBirthdate(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          labels.general.birthDate,
                          style: Get.theme.textTheme.headline6,
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 4,
                  child: FlatButton(
                    onPressed: () => controller.sortByBarrio(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Icon(Icons.keyboard_arrow_down),
                      ],
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
                  shrinkWrap: true,
                  itemCount: controller.currentListLength,
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1.0,
                    color: Colors.blue[900],
                  ),
                  itemBuilder: (context, index) => FlatButton(
                    onPressed: () => controller.selectPatient(index),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: _padding,
                          width: Get.width / 2.6,
                          child: Text(
                            controller.patientName(index),
                            style: Get.theme.textTheme.headline6,
                          ),
                        ),
                        Container(
                          padding: _padding,
                          width: Get.width / 3,
                          child: Text(
                            controller.patientDob(index),
                            style: Get.theme.textTheme.headline6,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: _padding,
                          width: Get.width / 4,
                          child: Text(
                            controller.patientBarrio(index),
                            overflow: TextOverflow.ellipsis,
                            style: Get.theme.textTheme.headline6,
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
