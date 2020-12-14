import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import 'package:vigor/ui/styled_components/add_new.dart';
import 'package:vigor/ui/styled_components/styled_components.dart';

import '../../../controllers/local/new_patient/contacts_controller.dart';
import '../../../localization.dart';
import '../../styled_components/app_bar.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'contacts_view_controller.dart';
import 'widgets/widgets.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final ContactsController controller = Get.put(ContactsController());
    final viewController = Get.put(ContactsViewController());

    Widget addNew() {
      controller.setupForNewContact();
      return AlertDialog(
        title: Text('New Contact'),
        content: Obx(
          () => GestureDetector(
            onTap: () {
              final currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NamesInputWidget(
                    familyName: controller.familyName,
                    givenName: controller.givenName,
                    familyNameError: controller.familyNameError,
                    givenNameError: controller.givenNameError,
                  ),
                  DropDownSelection(
                    title: labels.general.relationship,
                    selectionList: controller.relationTypes,
                    display: controller.relation,
                    selectNew: controller.selectRelation,
                    error: controller.relationError,
                  ),
                  DropDownSelection(
                    title: labels.general.address.neighborhood,
                    selectionList: controller.barriosList,
                    display: controller.barrio,
                    selectNew: controller.selectBarrio,
                    error: controller.barrioError,
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'Cancel',
              style: TextStyle(color: Get.theme.colorScheme.onPrimary),
            ),
            onPressed: () => Get.back(),
          ),
          TextButton(
            child: Text(
              'Add',
              style: TextStyle(color: Get.theme.colorScheme.onPrimary),
            ),
            onPressed: () async => controller.addNewContact(),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: VigorAppBar(title: 'Contacts'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Obx(
                () => controller.currentListLength == 0
                    ? Text('No contacts have been added.')
                    : OrderedList(
                        label1:
                            Text('Name', style: Get.theme.textTheme.headline6),
                        sortCol1: controller.sortByName,
                        order1: viewController.getOrder(controller.nameSort),
                        entry1: controller.contactName,
                        label2: Text(
                          'Relation',
                          style: Get.theme.textTheme.headline6,
                        ),
                        sortCol2: controller.sortByRelation,
                        order2:
                            viewController.getOrder(controller.relationSort),
                        entry2: controller.contactRelation,
                        label3: Icon(Icons.location_on_outlined),
                        sortCol3: controller.sortByBarrio,
                        order3: viewController.getOrder(controller.barrioSort),
                        entry3: controller.contactBarrio,
                        listLength: controller.currentListLength,
                        selectEntry: null,
                      ),
              ),
            ),
            ThinActionButton(
              buttonText: 'Patient Home',
              onPressed: () async => Get.toNamed(AppRoutes.PATIENT_HOME_PAGE,
                  arguments: controller.patient),
              width: Get.width * .5,
            ),
            SizedBox(height: Get.height * .03),
          ],
        ),
        floatingActionButton: AddNew(() async => await Get.dialog(addNew())),
        bottomNavigationBar: bottomAppBar(),
      ),
    );
  }
}
