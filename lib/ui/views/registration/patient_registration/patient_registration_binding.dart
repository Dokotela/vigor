import 'package:get/get.dart';
import '../../../../controllers/local/registration/patient_registration_controller.dart';

class PatientRegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PatientRegistrationController>(PatientRegistrationController());
  }
}
