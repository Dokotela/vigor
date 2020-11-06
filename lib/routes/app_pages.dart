import 'package:get/route_manager.dart';
import '../ui/views/views.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomeView()),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      // binding: SurveyBinding(),
    ),
    GetPage(
      name: Routes.PATIENT_REGISTRATION,
      page: () => PatientRegistrationView(),
    ),
    GetPage(
      name: Routes.CONTACT_REGISTRATION,
      page: () => ContactRegistrationView(),
    ),
  ];
}
