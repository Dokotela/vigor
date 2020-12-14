import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/styled_components.dart';

import '../../../controllers/local/new_patient/contacts_controller.dart';
import '../../../localization.dart';
import '../../styled_components/app_bar.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'contacts_view_controller.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final ContactsController controller = Get.put(ContactsController());
    final viewController = Get.put(ContactsViewController());

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
          children: [
            Expanded(
              child: Obx(
                () => OrderedList(
                  label1: Text('Patient', style: Get.theme.textTheme.headline6),
                  sortCol1: controller.sortByName,
                  order1: viewController.getOrder(controller.nameSort),
                  entry1: controller.contactName,
                  label2: Text(
                    labels.general.birthDate,
                    style: Get.theme.textTheme.headline6,
                  ),
                  sortCol2: controller.sortByRelation,
                  order2: viewController.getOrder(controller.relationSort),
                  entry2: controller.contactRelation,
                  label3: Icon(Icons.location_on_outlined),
                  sortCol3: controller.sortByBarrio,
                  order3: viewController.getOrder(controller.barrioSort),
                  entry3: controller.contactBarrio,
                  listLength: controller.currentListLength,
                  selectEntry: null,
                  addNew: null,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomAppBar,
        // body: Column(
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Container(
        //           width: Get.width / 2.6,
        //           child: FlatButton(
        //             onPressed: () => controller.sortByName(),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'Patient',
        //                   style: Get.theme.textTheme.headline6,
        //                 ),
        //                 Obx(() => viewController.getOrder(controller.nameSort)),
        //               ],
        //             ),
        //           ),
        //         ),
        //         Container(
        //           width: Get.width / 2.9,
        //           child: FlatButton(
        //             onPressed: () => controller.sortByBirthdate(),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   labels.general.birthDate,
        //                   style: Get.theme.textTheme.headline6,
        //                 ),
        //                 Obx(() =>
        //                     viewController.getOrder(controller.birthDateSort)),
        //               ],
        //             ),
        //           ),
        //         ),
        //         Container(
        //           width: Get.width / 5,
        //           child: FlatButton(
        //             onPressed: () => controller.sortByBarrio(),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 Icon(Icons.location_on_outlined),
        //                 Obx(() =>
        //                     viewController.getOrder(controller.barrioSort)),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //     const Divider(
        //       thickness: 4.0,
        //       color: Colors.transparent,
        //     ),
        //     Expanded(
        //       child: Obx(
        //         () => ListView.separated(
        //           itemCount: controller.currentListLength,
        //           separatorBuilder: (context, index) => Divider(
        //             thickness: 1.0,
        //             color: Colors.blue[900],
        //           ),
        //           itemBuilder: (context, index) => FlatButton(
        //             onPressed: () => controller.selectPatient(index),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 Container(
        //                   padding: _padding,
        //                   width: Get.width / 2.6,
        //                   child: Text(
        //                     controller.patientName(index),
        //                     style: Get.theme.textTheme.headline6,
        //                   ),
        //                 ),
        //                 Container(
        //                   padding: _padding,
        //                   width: Get.width / 3,
        //                   child: Text(
        //                     controller.patientDob(index),
        //                     style: Get.theme.textTheme.headline6,
        //                   ),
        //                 ),
        //                 Container(
        //                   padding: _padding,
        //                   width: Get.width / 5,
        //                   child: Text(
        //                     controller.patientBarrio(index),
        //                     overflow: TextOverflow.ellipsis,
        //                     style: Get.theme.textTheme.headline6,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   elevation: 10.0,
        //   backgroundColor: Get.theme.colorScheme.primary,
        //   onPressed: () => Get.toNamed(AppRoutes.NEW_PATIENT),
        //   child: Icon(
        //     Icons.add,
        //     color: Get.theme.colorScheme.onPrimary,
        //   ),
        // ),
      ),
    );
  }
}
