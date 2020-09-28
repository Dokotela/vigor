// import 'package:fhir/r4.dart';
// import 'package:get/get.dart';
// import 'package:vigor/1_presentation/screens/screens.dart';
// import 'package:vigor/3_domain/models/patient_model.dart';
// import 'package:vigor/4_infrastructure/interfaces/i_fhir_db.dart';

// class PatientParasiteController extends GetxController {
//   // PROPERTIES
//   final PatientModel patient = PatientModel(patient: Get.arguments);
//   final dewormingHistory = <Resource>[].obs;

//   // INIT
//   @override
//   void onInit() {
//     final iFhirDb = IFhirDb();
//     iFhirDb.returnPatientPastDeworming(patient.id()).then((result) {
//       result.fold((ifLeft) => Get.snackbar('Error', '${ifLeft.error}'),
//           (ifRight) => dewormingHistory.value = ifRight);
//     });
//     super.onInit();
//   }

//   // SETTER FUNCTIONS

//   // GETTER FUNCTIONS
//   String name() => patient.name();
//   String id() => patient.id();
//   String sex() => patient.sex();
//   String birthDate() => patient.birthDate();

//   // FUNCTIONS
//   void editPatient() =>
//       Get.off(PatientRegistrationScreen(), arguments: patient.patient);
// }
