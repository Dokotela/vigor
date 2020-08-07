import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/registration/patient_registration_controller.dart';
import 'package:vigor/shared_widgets/shared_widgets.dart';
import 'package:vigor/themes/themes.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PatientRegistrationController regController =
        Get.put(PatientRegistrationController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Patient Information'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  GetBuilder<PatientRegistrationController>(
                    builder: (_) => TextFormField(
                      controller: _.familyName,
                      decoration: InputDecoration(
                        helperText: 'Family Name'.tr,
                        hintText: 'Family Name'.tr,
                        errorText: _.familyError(),
                      ),
                    ),
                  ),
                  GetBuilder<PatientRegistrationController>(
                    builder: (_) => TextFormField(
                      controller: _.givenName,
                      decoration: InputDecoration(
                        helperText: 'Other Names'.tr,
                        hintText: 'Other Names'.tr,
                        errorText: _.givenError(),
                      ),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Sex at birth'.tr,
                            style: ThemeClass.dark().textTheme.headline5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 'female',
                            groupValue: regController.gender.value,
                            onChanged: (String _) =>
                                regController.setFemaleGender(),
                          ),
                          Text(
                            'female'.tr,
                            style: ThemeClass.dark().textTheme.headline5,
                          ),
                          Radio(
                            value: 'male',
                            groupValue: regController.gender.value,
                            onChanged: (String _) =>
                                regController.setMaleGender(),
                          ),
                          Text(
                            'male'.tr,
                            style: ThemeClass.dark().textTheme.headline5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.transparent,
                onPressed: () => showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(const Duration(days: 1)),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2999, 12, 31),
                ).then((date) => regController.chooseBirthDate(date)),
                child: Obx(
                  () => Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Expanded(
                        child: Text(
                          '${"Date of Birth".tr} ${regController.dispBirthDate.value}',
                          style: ThemeClass.dark().textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
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
                          child: Text(
                            value,
                            style: ThemeClass.dark().textTheme.headline4,
                          ),
                        );
                      }).toList(),
                      hint: Obx(() => Text(
                            regController.displayBarrio.value,
                            style: ThemeClass.dark().textTheme.headline4,
                          )),
                      onChanged: (newVal) => regController.setBarrio(newVal)),
                ),
              ),
              ButtonTheme(
                minWidth: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  onPressed: () => regController.register(),
                  child: Text('Register Patient'.tr),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }
}
