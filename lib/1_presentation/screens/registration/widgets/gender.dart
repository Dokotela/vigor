// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vigor/1_presentation/themes/themes.dart';

// Widget genderSelection({
//   @required String curGender,
//   @required Function setFemaleGender,
//   @required Function setMaleGender,
// }) =>
//     Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       child: Column(
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Sex at birth'.tr,
//                 style: ThemeClass.dark().textTheme.headline5,
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Radio(
//                 value: 'female',
//                 groupValue: curGender,
//                 onChanged: (String _) => setFemaleGender(),
//               ),
//               Text('female'.tr, style: ThemeClass.dark().textTheme.headline5),
//               Radio(
//                 value: 'male',
//                 groupValue: curGender,
//                 onChanged: (String _) => setMaleGender(),
//               ),
//               Text('male'.tr, style: ThemeClass.dark().textTheme.headline5),
//             ],
//           ),
//         ],
//       ),
//     );
