import 'package:get/get.dart';
// import 'package:vigor/ui/views/patient_home/patient_imm/vax_dates_dialog.dart';

import '../../../_internal/utils/relative_age.dart';
import '../../../models/data/patient_model.dart';
import '../../../routes/routes.dart';

class PatientHomeController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;

  /// INIT
  @override
  void onInit() {
    _patient.value = Get.arguments;
    super.onInit();
  }

  /// GETTER FUNCTIONS
  String name() => _patient.value.name();
  String id() => _patient.value.id();
  String sex() => _patient.value.sex();
  String birthDate() => _patient.value.birthDate();
  String relativeAge() => sharedRelativeAge(_patient.value.birthDate());
  PatientModel actualPatient() => _patient.value;

  /// SETTER FUNCTIONS

  /// EVENTS
  void editPatient() =>
      Get.toNamed(AppRoutes.PATIENT_REGISTRATION, arguments: _patient.value);

  void immPage() =>
      Get.toNamed(AppRoutes.PATIENT_IMM_PAGE, arguments: _patient.value);
}
