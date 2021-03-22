import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vigor/ui/styled_components/add_new.dart';

import '../../../../controllers/local/new_patient/contacts_controller.dart';
import '../../../localization.dart';
import '../../../styled_components/app_bar.dart';
import '../../../styled_components/bottom_navigation_bar.dart';
import '../../../styled_components/styled_components.dart';
import '../../../views/new_patient/widgets/names.dart';
import 'contacts_view_controller.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context)!;
    final ContactsController controller = Get.put(ContactsController())!;
    final viewController = Get.put(ContactsViewController());

    Widget addNew() {
      controller.setupForNewContact();
      return ResponsiveBuilder(builder: (context, sizingInformation) {
        return AlertDialog(
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
                    // SizedBox(height: Get.height * .02),
                    DropDownSelection(
                      title: labels.relationships.title,
                      selectionList: controller.relationTypes,
                      display: controller.relation,
                      selectNew: controller.selectRelation,
                      error: controller.relationError,
                    ),
                    // SizedBox(height: Get.height * .02),
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
                style: TextStyle(
                    color: Get.theme!.colorScheme.onPrimary,
                    fontSize: Get.width * .05),
              ),
              onPressed: () => Get.back(),
            ),
            TextButton(
              child: Text(
                labels.actions.add,
                style: TextStyle(
                    color: Get.theme!.colorScheme.onPrimary,
                    fontSize: Get.width * .05),
              ),
              onPressed: () async => controller.addNewContact(),
            ),
          ],
        );
      });
    }

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: VigorAppBar(
          title: labels.pages.contacts,
          actions: [
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              iconSize: Get.width * .06,
              onPressed: () async => await Get.dialog(addNew()),
              color: Get.theme!.colorScheme.onPrimary,
            ),
          ],
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Obx(
                  () => controller.currentListLength == 0
                      ? Text(
                          labels.contacts.noContactsAdded,
                          style: Get.theme!.textTheme.headline6!
                              .copyWith(fontSize: Get.width * .06),
                        )
                      : OrderedListPickOne(
                          label1: labels.name.title,
                          sortCol1: controller.sortByName,
                          order1: viewController!.getOrder(controller.nameSort),
                          entry1: controller.contactName,
                          label2: labels.relationships.title,
                          sortCol2: controller.sortByRelation,
                          order2:
                              viewController.getOrder(controller.relationSort),
                          entry2: controller.contactRelation,
                          label3: 'Barrio',
                          sortCol3: controller.sortByBarrio,
                          order3:
                              viewController.getOrder(controller.barrioSort),
                          entry3: controller.contactBarrio,
                          listLength: controller.currentListLength,
                          choosePrimary: controller.choosePrimary,
                          selectEntry: null,
                        ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: AddNew(() => Get.dialog(addNew())),
        bottomNavigationBar: bottomAppBar(),
      ),
    );
  }
}
