import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/registration/patient_registration_controller.dart';
import 'package:vigor/shared_widgets/shared_widgets.dart';
import 'package:vigor/themes/themes.dart';
import 'package:vigor/utils/const/registration.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PatRegController regController = Get.put(PatRegController());

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
                  GetBuilder<PatRegController>(
                    builder: (_) => TextFormField(
                      controller: _.familyName,
                      decoration: InputDecoration(
                        hintText: 'Family Name'.tr,
                        errorText: regController.dispFamilyError(),
                      ),
                    ),
                  ),
                  GetBuilder<PatRegController>(
                    builder: (_) => TextFormField(
                      controller: _.givenName,
                      decoration: InputDecoration(
                        hintText: 'Other Names'.tr,
                        errorText: regController.dispGivenError(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
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
                        Obx(
                          () => Radio(
                            value: 'female',
                            groupValue: regController.curGender(),
                            onChanged: (String _) =>
                                regController.setFemaleGender(),
                          ),
                        ),
                        Text('female'.tr,
                            style: ThemeClass.dark().textTheme.headline5),
                        Obx(
                          () => Radio(
                            value: 'male',
                            groupValue: regController.curGender(),
                            onChanged: (String _) =>
                                regController.setMaleGender(),
                          ),
                        ),
                        Text('male'.tr,
                            style: ThemeClass.dark().textTheme.headline5),
                      ],
                    ),
                  ],
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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Expanded(
                          child: Obx(
                            () => Text(
                              '${"Date of Birth".tr} ${regController.displayBirthDate()}',
                              style: ThemeClass.dark().textTheme.headline5,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(() => Text(
                          regController.dispBirthDateError(),
                          style: TextStyle(fontSize: 12.0, color: Colors.red),
                        )),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: <Widget>[
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          items: barrios.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: ThemeClass.dark().textTheme.headline4,
                              ),
                            );
                          }).toList(),
                          hint: Obx(() => Text(
                                regController.displayBarrio(),
                                style: ThemeClass.dark().textTheme.headline4,
                              )),
                          onChanged: (newVal) =>
                              regController.setBarrio(newVal)),
                    ),
                    Obx(() => Text(
                          regController.dispBarrioError(),
                          style: TextStyle(fontSize: 12.0, color: Colors.red),
                        )),
                  ],
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
