import 'package:get/get.dart';

import '../../../controllers/local/patient_screens/patient_home_controller.dart';

class PatientHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PatientHomeController>(PatientHomeController());
  }
}
