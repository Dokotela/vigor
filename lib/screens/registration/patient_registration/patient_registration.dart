import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/screens/registration/patient_registration/patient_registration_controller.dart';
import 'package:vigor/shared_widgets/shared_widgets.dart';
import 'package:vigor/themes/themes.dart';

class Registration extends StatelessWidget {
  final PatientRegistrationController regController =
      Get.put(PatientRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Information'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  GetBuilder<PatientRegistrationController>(
                    builder: (_) => TextFormField(
                      controller: regController.familyName,
                      decoration: InputDecoration(
                        hintText: 'Family Name'.tr,
                        errorText: regController?.family?.value?.toString(),
                      ),
                    ),
                  ),
                  GetBuilder<PatientRegistrationController>(
                    builder: (_) => TextFormField(
                      controller: regController.givenName,
                      decoration: InputDecoration(
                        hintText: 'Other Names'.tr,
                        errorText: regController?.family?.value?.toString(),
                      ),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sex at birth'.tr,
                      style: ThemeClass.dark().textTheme.headline4,
                    ),
                    Radio(
                      value: 'female',
                      groupValue: regController.gender.value,
                      onChanged: (String _) => regController.setFemaleGender(),
                    ),
                    Text(
                      'female'.tr,
                      style: ThemeClass.dark().textTheme.headline4,
                    ),
                    Radio(
                      value: 'male',
                      groupValue: regController.gender.value,
                      onChanged: (String _) => regController.setMaleGender(),
                    ),
                    Text(
                      'male'.tr,
                      style: ThemeClass.dark().textTheme.headline4,
                    ),
                  ],
                ),
              ),
              RaisedButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.blue, width: 2.0),
                ),
                color: ThemeClass.dark().backgroundColor,
                onPressed: () => showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(const Duration(days: 1)),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2999, 12, 31),
                ).then((date) => regController.chooseBirthDate(date)),
                child: Obx(
                  () => Text(
                    '${"Date of Birth".tr} ${regController.dispBirthDate.value}',
                    style: ThemeClass.dark().textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DropdownButton<String>(
                  items: <String>[
                    'Filiu',
                    'La 41',
                    'Carretera',
                    'Villa_Verde',
                    'Cachipero',
                    'Puerto_Rico',
                    'Kilombo'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Obx(() => Text(
                        regController.displayBarrio.value,
                        style: ThemeClass.dark().textTheme.headline4,
                      )),
                  onChanged: (newVal) => regController.setBarrio(newVal)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
