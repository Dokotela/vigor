import 'package:get/get.dart';
import '../../../controllers/local/patient_search/controller.dart';

import 'view_controller.dart';

class PatientSearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PatientSearchViewController>(PatientSearchViewController());
    Get.put<PatientSearchController>(PatientSearchController());
  }
}
