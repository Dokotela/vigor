import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/patient_screens/patient_immunizations/patient_immunizations_controller.dart';

class PatientImmHx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientImmunizationsController>(
      init: PatientImmunizationsController(),
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Obx(
          () => Table(
            border: TableBorder.all(color: Colors.black26, width: 1),
            children: [],
          ),
        ),
      ),
    );
  }
}
