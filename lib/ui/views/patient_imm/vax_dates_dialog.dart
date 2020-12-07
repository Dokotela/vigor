// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../_internal/utils/utils.dart';
// import '../../../controllers/local/patient_imm/vax_dates_controller.dart';

// void vaxDatesDialog(String text, String dz) =>
//     Get.dialog(_VaxDatesDialog(text, dz));

// class _VaxDatesDialog extends StatelessWidget {
//   _VaxDatesDialog(this.text, this.dz);

//   final String text;
//   final String dz;
//   final controller = Get.put(VaxDatesController());

//   @override
//   Widget build(BuildContext context) {
//     controller.setInitial(text, dz);
//     return Dialog(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//               child: Text(controller.text,
//                   style: TextStyle(
//                       fontSize: 24,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold))),
//           SizedBox(height: 24),
//           Text('Dates Given\n',
//               style: TextStyle(fontSize: 20, color: Colors.blue)),
//           Obx(
//             () => controller.dateList.isEmpty
//                 ? _noPrevious
//                 : ListView.separated(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.all(8),
//                     separatorBuilder: (BuildContext context, int index) =>
//                         const Divider(),
//                     itemCount: controller.dateList.length,
//                     itemBuilder: (BuildContext context, int index) => Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Obx(
//                           () => Text(
//                             dateFromFhirDateTime(controller.dateList[index]),
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.blue,
//                               decoration: controller.deleteList
//                                       .contains(controller.dateList[index])
//                                   ? TextDecoration.lineThrough
//                                   : null,
//                             ),
//                           ),
//                         ),
//                         Material(
//                           elevation: 5.0,
//                           borderRadius: BorderRadius.circular(64.0),
//                           color: Colors.blue[600],
//                           child: MaterialButton(
//                             onPressed: () => null,
//                             child: Text('Edit'),
//                           ),
//                         ),
//                         Material(
//                           elevation: 5.0,
//                           borderRadius: BorderRadius.circular(64.0),
//                           color: Colors.blue[600],
//                           child: MaterialButton(
//                             onPressed: () =>
//                                 controller.delete(controller.dateList[index]),
//                             child: Text('Delete'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//           ),
//           SizedBox(height: 24),
//           RaisedButton(
//             shape: RoundedRectangleBorder(
//               side: const BorderSide(color: Colors.grey),
//               borderRadius: BorderRadius.circular(12.0),
//             ),
//             color: Colors.transparent,
//             onPressed: () => showDatePicker(
//               context: Get.context,
//               locale: Get.locale,
//               initialDate: controller.currentDate,
//               firstDate: DateTime(1900, 1, 1),
//               lastDate: DateTime(2999, 12, 31),
//             ).then((date) {
//               controller.recordNewDate(date);
//             }),
//             child: Row(
//               children: [
//                 const Icon(Icons.calendar_today, size: 64.0),
//                 Text(
//                   'Add date of vaccine:\n ${controller.dateString}',
//                   style: Get.theme.textTheme.headline6,
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 32),
//           Material(
//             elevation: 5.0,
//             borderRadius: BorderRadius.circular(64.0),
//             color: Colors.blue[600],
//             child: MaterialButton(
//               minWidth: Get.width,
//               onPressed: () => _showDialog(context),
//               child: Text('Click to certify dates'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   static const _noPrevious = Text(
//     'No previous vaccines of this type given',
//     style: TextStyle(fontSize: 20, color: Colors.blue),
//   );

//   void _showDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Certify Dates'),
//           content: Text('Are you sure you want to certify the dates?'),
//           actions: [
//             FlatButton(
//               textColor: Color(0xFF6200EE),
//               onPressed: () => Get.back(),
//               child: Text('CANCEL'),
//             ),
//             FlatButton(
//               textColor: Color(0xFF6200EE),
//               onPressed: () => controller.accept(),
//               child: Text('ACCEPT'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
