// import 'package:fhir/r4.dart';
// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:get/get.dart';

// import '../../../models/_internal/simple_date.dart';
// import '../../../models/patient_model.dart';
// import '../../../views/screens.dart';
// import '../patient_home_controller.dart';
// import '../shared/relative_age.dart';

// part 'patient_immunizations_controller.freezed.dart';
// part 'patient_immunizations_state.dart';

// class PatientImmunizationsController extends GetxController {
//   // PROPERTIES
//   final state = PatientImmunizationsState.initial(
//           Get.find<PatientHomeController>().patient)
//       .obs;

//   // INIT
//   @override
//   Future onInit() async {
//     final patient = state.value.patient;
//     await patient.loadImmunizations();
//     await patient.getImmunizationRecommendation();
//     final fullRecs = <ImmunizationRecommendationRecommendation>[];
//     patient.recommendation.recommendation.forEach(fullRecs.add);
//     final displayRecs = fullRecs;
//     displayRecs.removeWhere(
//         (rec) => rec.forecastStatus.coding[0].code != Code('notComplete'));
//     state.value = state.value.copyWith(
//       immEvals: patient.immEvaluations,
//       fullImmRecs: fullRecs,
//       displayImmRecs: sortRecsByDate(displayRecs),
//     );
//     patient.createHx();
//     super.onInit();
//   }

//   // GETTERS
//   String name() => state.value.patient.name();
//   String id() => state.value.patient.id();
//   String sex() => state.value.patient.sex();
//   String birthDate() => state.value.patient.birthDate();
//   String relativeAge() => sharedRelativeAge(state.value.patient.birthDate());

//   int get numberOfRecommendations => state.value.displayImmRecs.length;
//   Color colorByDate(int index) {
//     final dueDate = DateTime.parse(state
//         .value.displayImmRecs[index].dateCriterion
//         .firstWhere((criteria) => criteria?.code?.coding != null
//             ? criteria.code.coding[0].code == Code('30980-7')
//             : false)
//         .value
//         .toString());
//     return dueDate.isBefore(DateTime.now())
//         ? Colors.red
//         : dueDate.isBefore(DateTime(DateTime.now().year, DateTime.now().month,
//                 DateTime.now().day + 30))
//             ? Colors.yellow
//             : Colors.transparent;
//   }

//   String vaccineType(int index) => state
//               .value.displayImmRecs[index].vaccineCode !=
//           null
//       ? state.value.displayImmRecs[index].vaccineCode[0].coding != null
//           ? state.value.displayImmRecs[index].vaccineCode[0].coding[0].display
//           : ''
//       : '';
//   String vaccineDate(int index) =>
//       simpleFhirDateTime(state.value.displayImmRecs[index].dateCriterion
//           .firstWhere((criteria) => criteria?.code?.coding != null
//               ? criteria.code.coding[0].code == Code('30980-7')
//               : false)
//           .value);

//   // EVENTS
//   void editPatient() => Get.off(PatientRegistrationScreen(),
//       arguments: state.value.patient.patient);

//   // FUNCTIONS

//   List<ImmunizationRecommendationRecommendation> sortRecsByDate(
//       List<ImmunizationRecommendationRecommendation> recList) {
//     recList.sort((a, b) => DateTime.parse(a.dateCriterion
//             .firstWhere((criteria) => criteria?.code?.coding != null
//                 ? criteria.code.coding[0].code == Code('30980-7')
//                 : false)
//             .value
//             .toString())
//         .compareTo(DateTime.parse(b.dateCriterion
//             .firstWhere((criteria) => criteria?.code?.coding != null
//                 ? criteria.code.coding[0].code == Code('30980-7')
//                 : false)
//             .value
//             .toString())));
//     return recList;
//   }
// }
