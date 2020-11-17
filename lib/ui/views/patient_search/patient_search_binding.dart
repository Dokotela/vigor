import 'package:get/get.dart';
import '../../../controllers/local/patient_search/patient_search_controller.dart';

import 'patient_search_view_controller.dart';

class PatientSearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PatientSearchViewController>(PatientSearchViewController());
    Get.put<PatientSearchController>(PatientSearchController());
  }
}
