import 'package:get/route_manager.dart';
import '../ui/views/patient_search/patient_search_binding.dart';
import '../ui/views/views.dart';

part 'app_routes.dart';

final appPages = [
  GetPage(name: AppRoutes.HOME, page: () => HomeView()),
  GetPage(
    name: AppRoutes.LOGIN,
    page: () => LoginView(),
  ),
  // GetPage(
  //   name: AppRoutes.PATIENT_REGISTRATION,
  //   page: () => PatientRegistrationView(),
  // ),
  // GetPage(
  //   name: AppRoutes.CONTACT_REGISTRATION,
  //   page: () => ContactRegistrationView(),
  // ),
  GetPage(
    name: AppRoutes.PATIENT_SEARCH,
    page: () => PatientSearchPage(),
    binding: PatientSearchBinding(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_HOME,
    page: () => HomeView(),
  ),
  // GetPage(
  //   name: AppRoutes.CONTACT_REGISTRATION,
  //   page: () => ContactRegistrationView(),
  // ),
];
