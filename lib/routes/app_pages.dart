import 'package:get/route_manager.dart';

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
  ),
  GetPage(
    name: AppRoutes.CONTACT_REGISTRATION,
    page: () => ContactRegistrationPage(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_SEARCH,
    page: () => PatientSearchPage(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_HOME,
    page: () => PatientHomePage(),
  ),
  GetPage(
    name: AppRoutes.VAX_DATES,
    page: () => VaxDatesAlert(),
  ),
];
