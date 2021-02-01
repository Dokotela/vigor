import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/local/new_patient/contacts_controller.dart';
import '../../../../localization.dart';
import '../../../../routes/routes.dart';
import '../../../styled_components/add_new.dart';
import '../../../styled_components/app_bar.dart';
import '../../../styled_components/bottom_navigation_bar.dart';
import '../../../styled_components/styled_components.dart';
import '../../../views/new_patient/widgets/names.dart';
import 'contacts_view_controller.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final ContactsController controller = Get.put(ContactsController());
    final viewController = Get.put(ContactsViewController());

    Widget addNew() {
      controller.setupForNewContact();
      return AlertDialog(
        title: Text(labels.contacts.newContact),
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
                    title: labels.relationships.title,
                    selectionList: controller.relationTypes,
                    display: controller.relation,
                    selectNew: controller.selectRelation,
                    error: controller.relationError,
                  ),
                  DropDownSelection(
                    title: labels.address.neighborhood.title,
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
              labels.actions.cancel,
              style: TextStyle(color: Get.theme.colorScheme.onPrimary),
            ),
            onPressed: () => Get.back(),
          ),
          TextButton(
            child: Text(
              labels.actions.add,
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
        appBar: VigorAppBar(title: labels.pages.contacts),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Obx(
                () => controller.currentListLength == 0
                    ? Text(
                        labels.contacts.noContactsAdded,
                        style: Get.theme.textTheme.headline6,
                      )
                    : OrderedList(
                        label1: Text(labels.name.title,
                            style: Get.theme.textTheme.headline6),
                        sortCol1: controller.sortByName,
                        order1: viewController.getOrder(controller.nameSort),
                        entry1: controller.contactName,
                        label2: Text(
                          labels.relationships.title,
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
              buttonText: 'Continue', //labels.pages.patientHome,
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
