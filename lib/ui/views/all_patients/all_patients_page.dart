import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/styled_components.dart';

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
        appBar: VigorAppBar(title: 'All Patients'),
        //   automaticallyImplyLeading: false,
        //   actions: [
        //     Icon(Icons.search, size: Get.width / 10),
        //     Expanded(
        //       child: TextFormField(
        //         cursorColor: Get.theme.colorScheme.onPrimary,
        //         controller: searchName,
        //         style: Get.textTheme.headline5
        //             .copyWith(color: Get.theme.colorScheme.onPrimary),
        //         decoration: InputDecoration(
        //             hintText: labels.general.search.search,
        //             hintStyle: Get.textTheme.headline5
        //                 .copyWith(color: Get.theme.colorScheme.onPrimary)),
        //         onChanged: (value) => controller.searchPatientByName(value),
        //       ),
        //     ),
        //     IconButton(
        //       icon:
        //           Icon(Icons.settings, color: Get.theme.colorScheme.onPrimary),
        //       onPressed: () => settingsDialog(),
        //     ),
        //   ],
        // ),
        body: OrderedList(
          label1: Text('Patient', style: Get.theme.textTheme.headline6),
          sortCol1: controller.sortByName,
          order1: viewController.getOrder(controller.nameSort),
          entry1: controller.patientName,
          label2: Text(
            labels.general.birthDate,
            style: Get.theme.textTheme.headline6,
          ),
          sortCol2: controller.sortByBirthdate,
          order2: viewController.getOrder(controller.birthDateSort),
          entry2: controller.patientDob,
          label3: Icon(Icons.location_on_outlined),
          sortCol3: controller.sortByBarrio,
          order3: viewController.getOrder(controller.barrioSort),
          entry3: controller.patientBarrio,
          listLength: controller.currentListLength,
          selectEntry: controller.selectPatient,
          addNew: () => Get.toNamed(AppRoutes.NEW_PATIENT),
        ),

        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
