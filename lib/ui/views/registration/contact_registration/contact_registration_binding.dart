import 'package:get/get.dart';

import '../../../../controllers/local/registration/contact_registration_controller.dart';

class ContactRegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ContactRegistrationController>(ContactRegistrationController());
  }
}
