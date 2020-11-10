import 'package:get/route_manager.dart';
import '../ui/views/patient_search/binding.dart';
import '../ui/views/views.dart';

part 'app_routes.dart';

final appPages = [
  GetPage(name: AppRoutes.HOME, page: () => HomeView()),
  GetPage(
    name: AppRoutes.LOGIN,
    page: () => LoginView(),
    // binding: SurveyBinding(),
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
  // GetPage(
  //   name: AppRoutes.PATIENT_HOME,
  //   page: () => PatientHomeView(),
  // ),
  // GetPage(
  //   name: AppRoutes.CONTACT_REGISTRATION,
  //   page: () => ContactRegistrationView(),
  // ),
];
