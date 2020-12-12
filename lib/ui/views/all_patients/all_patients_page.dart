import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/commands/settings_dialog.dart';
import '../../../controllers/local/all_patients/patient_search_controller.dart';
import '../../../localization.dart';
import '../../../routes/routes.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'patient_search_view_controller.dart';

class AllPatientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final controller = Get.put(PatientSearchController());
    final viewController = Get.put(PatientSearchViewController());
    final searchName = TextEditingController();
    final _padding = EdgeInsets.fromLTRB(0, 0, 0, 0);

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Icon(Icons.search, size: Get.width / 10),
            Expanded(
              child: TextFormField(
                cursorColor: Get.theme.colorScheme.onPrimary,
                controller: searchName,
                style: Get.textTheme.headline5
                    .copyWith(color: Get.theme.colorScheme.onPrimary),
                decoration: InputDecoration(
                    hintText: labels.general.search.search,
                    hintStyle: Get.textTheme.headline5
                        .copyWith(color: Get.theme.colorScheme.onPrimary)),
                onChanged: (value) => controller.searchPatientByName(value),
              ),
            ),
            IconButton(
              icon:
                  Icon(Icons.settings, color: Get.theme.colorScheme.onPrimary),
              onPressed: () => settingsDialog(),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width / 2.6,
                  child: FlatButton(
                    onPressed: () => controller.sortByName(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Patient',
                          style: Get.theme.textTheme.headline6,
                        ),
                        Obx(() => viewController.getOrder(controller.nameSort)),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 2.9,
                  child: FlatButton(
                    onPressed: () => controller.sortByBirthdate(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          labels.general.birthDate,
                          style: Get.theme.textTheme.headline6,
                        ),
                        Obx(() =>
                            viewController.getOrder(controller.birthDateSort)),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width / 5,
                  child: FlatButton(
                    onPressed: () => controller.sortByBarrio(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Obx(() =>
                            viewController.getOrder(controller.barrioSort)),
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
                          ),
                        ),
                        Container(
                          padding: _padding,
                          width: Get.width / 5,
                          child: Text(
                            controller.patientBarrio(index),
                            overflow: TextOverflow.ellipsis,
                            style: Get.theme.textTheme.headline6,
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
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          backgroundColor: Get.theme.colorScheme.primary,
          onPressed: () => Get.toNamed(AppRoutes.NEW_PATIENT),
          child: Icon(
            Icons.add,
            color: Get.theme.colorScheme.onPrimary,
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
