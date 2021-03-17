import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/local/all_patients/patient_search_controller.dart';
import '../../../routes/routes.dart';
import '../../../ui/styled_components/add_new.dart';
import '../../../ui/styled_components/styled_components.dart';
import '../../localization.dart';
import '../../styled_components/bottom_navigation_bar.dart';
import 'patient_search_view_controller.dart';

class AllPatientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context)!;
    final controller = Get.put(PatientSearchController())!;
    final viewController = Get.put(PatientSearchViewController())!;
    final searchName = TextEditingController();

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: VigorAppBar(title: labels.pages.allPatients),
        body: Column(
          children: [
            Container(
              color: Get.theme!.colorScheme.onPrimary,
              child: Padding(
                padding: EdgeInsets.only(
                  left: Get.width * .05,
                  right: Get.width * .05,
                  top: Get.width * .01,
                  bottom: Get.width * .01,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Get.theme!.colorScheme.primary,
                    borderRadius: BorderRadius.circular(Get.width * .04),
                  ),
                  child: TextFormField(
                    style: Get.textTheme!.headline6,
                    controller: searchName,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          size: Get.width * .08,
                          color: Get.theme!.colorScheme.onPrimary,
                        ),
                        hintStyle: Get.textTheme!.headline6,
                        hintText: labels.actions.search),
                    onChanged: (value) => controller.searchPatientByName(value),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => OrderedList(
                  label1: labels.patient.title,
                  sortCol1: controller.sortByName,
                  order1: viewController.getOrder(controller.nameSort),
                  entry1: controller.patientName,
                  label2: labels.birthDate.title,
                  sortCol2: controller.sortByBirthdate,
                  order2: viewController.getOrder(controller.birthDateSort),
                  entry2: controller.patientDob,
                  label3: 'Barrio',
                  sortCol3: controller.sortByBarrio,
                  order3: viewController.getOrder(controller.barrioSort),
                  entry3: controller.patientBarrio,
                  listLength: controller.currentListLength,
                  selectEntry: controller.selectPatient,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: AddNew(() => Get.toNamed(AppRoutes.NEW_PATIENT)),
        bottomNavigationBar: bottomAppBar(),
      ),
    );
  }
}
