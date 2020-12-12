import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/new_patient/contacts_controller.dart';
import '../../../localization.dart';
import '../../styled_components/action_button.dart';
import '../../styled_components/app_bar.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'contacts_view_controller.dart';
import 'widgets/barrio.dart';
import 'widgets/names.dart';
import 'widgets/relation.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final ContactsController controller = Get.put(ContactsController());
    final viewController = Get.put(ContactsViewController());
    final _padding = EdgeInsets.fromLTRB(0, 0, 0, 0);

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: VigorAppBar(title: 'Contacts'),
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
