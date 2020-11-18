import 'package:get/route_manager.dart';

import '../ui/views/patient_search/patient_search_binding.dart';
import '../ui/views/registration/contact_registration/contact_registration_binding.dart';
import '../ui/views/registration/patient_registration/patient_registration_binding.dart';
import '../ui/views/views.dart';

part 'app_routes.dart';

final appPages = [
  GetPage(name: AppRoutes.HOME, page: () => HomePage()),
  GetPage(
    name: AppRoutes.LOGIN,
    page: () => LoginView(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_REGISTRATION,
    page: () => PatientRegistrationPage(),
    binding: PatientRegistrationBinding(),
  ),
  GetPage(
    name: AppRoutes.CONTACT_REGISTRATION,
    page: () => ContactRegistrationPage(),
    binding: ContactRegistrationBinding(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_SEARCH,
    page: () => PatientSearchPage(),
    binding: PatientSearchBinding(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_HOME,
    page: () => HomePage(),
  ),
];
