import 'package:get/route_manager.dart';

import '../ui/views/views.dart';

part 'app_routes.dart';

final appPages = [
  GetPage(name: AppRoutes.HOME, page: () => HomePage()),
  GetPage(
    name: AppRoutes.LOGIN,
    page: () => LoginPage(),
  ),
  GetPage(
    name: AppRoutes.NEW_PATIENT,
    page: () => NewPatientPage(),
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
    name: AppRoutes.PATIENT_HOME_PAGE,
    page: () => PatientHomePage(),
  ),
  GetPage(
    name: AppRoutes.PATIENT_IMM_PAGE,
    page: () => PatientImmPage(),
  ),
  GetPage(
    name: AppRoutes.VAX_DATES,
    page: () => VaxDatesPage(),
  ),
];
