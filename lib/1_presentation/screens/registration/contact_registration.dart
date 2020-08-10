import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/registration/contact_registration_controller.dart';

class ContactRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactRegistrationController>(
      init: ContactRegistrationController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(controller.patient.name[0].family),
          // ),
          // body: Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: <Widget>[
          //         Column(
          //           children: <Widget>[
          //             TextFormField(
          //               controller: controller.familyName,
          //               decoration: InputDecoration(
          //                 hintText: 'Family Name'.tr,
          //                 errorText: controller.dispFamilyNameError().tr,
          //               ),
          //             ),
          //             TextFormField(
          //               controller: controller.givenName,
          //               decoration: InputDecoration(
          //                 hintText: 'Other Names'.tr,
          //                 errorText: controller.dispGivenNameError().tr,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Container(
          //           decoration: BoxDecoration(
          //             border: Border.all(color: Colors.grey),
          //             borderRadius: BorderRadius.circular(16.0),
          //           ),
          //           child: Column(
          //             children: <Widget>[
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: <Widget>[
          //                   Text(
          //                     'Sex at birth'.tr,
          //                     style: ThemeClass.dark().textTheme.headline5,
          //                   ),
          //                 ],
          //               ),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: <Widget>[
          //                   Radio(
          //                     value: 'female',
          //                     groupValue: controller.curGender(),
          //                     onChanged: (String _) =>
          //                         controller.setFemaleGender(),
          //                   ),
          //                   Text('female'.tr,
          //                       style: ThemeClass.dark().textTheme.headline5),
          //                   Radio(
          //                     value: 'male',
          //                     groupValue: controller.curGender(),
          //                     onChanged: (String _) => controller.setMaleGender(),
          //                   ),
          //                   Text('male'.tr,
          //                       style: ThemeClass.dark().textTheme.headline5),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //         RaisedButton(
          //           shape: RoundedRectangleBorder(
          //             side: const BorderSide(color: Colors.grey),
          //             borderRadius: BorderRadius.circular(12.0),
          //           ),
          //           color: Colors.transparent,
          //           onPressed: () => showDatePicker(
          //             context: context,
          //             initialDate: DateTime.now().add(const Duration(days: 1)),
          //             firstDate: DateTime(1900, 1, 1),
          //             lastDate: DateTime(2999, 12, 31),
          //           ).then((date) => controller.chooseBirthDate(date)),
          //           child: Column(
          //             children: <Widget>[
          //               Row(
          //                 children: <Widget>[
          //                   const Icon(Icons.calendar_today, size: 64.0),
          //                   Column(
          //                     children: [
          //                       Text(
          //                         '${"Date of Birth".tr} ${controller.displayBirthDate()}',
          //                         style: ThemeClass.dark().textTheme.headline5,
          //                         textAlign: TextAlign.center,
          //                       ),
          //                       Text(
          //                         controller.dispBirthDateError().tr,
          //                         style: const TextStyle(
          //                             fontSize: 12.0, color: Colors.red),
          //                       ),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //         Container(
          //           alignment: Alignment.center,
          //           decoration: BoxDecoration(
          //             border: Border.all(color: Colors.grey),
          //             borderRadius: BorderRadius.circular(16.0),
          //           ),
          //           child: Column(
          //             children: <Widget>[
          //               DropdownButtonHideUnderline(
          //                 child: DropdownButton<String>(
          //                     items: controller.barriosList.map((String value) {
          //                       return DropdownMenuItem<String>(
          //                         value: value,
          //                         child: Text(
          //                           value,
          //                           style: ThemeClass.dark().textTheme.headline4,
          //                         ),
          //                       );
          //                     }).toList(),
          //                     hint: Text(
          //                       controller.displayBarrio().tr,
          //                       style: ThemeClass.dark().textTheme.headline4,
          //                     ),
          //                     onChanged: (newVal) =>
          //                         controller.setBarrio(newVal)),
          //               ),
          //               Text(
          //                 controller.dispBarrioError().tr,
          //                 style:
          //                     const TextStyle(fontSize: 12.0, color: Colors.red),
          //               ),
          //             ],
          //           ),
          //         ),
          //         ButtonTheme(
          //           minWidth: double.infinity,
          //           child: RaisedButton(
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(16.0),
          //             ),
          //             onPressed: () => controller.register(),
          //             child: Text('Register Patient'.tr),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
