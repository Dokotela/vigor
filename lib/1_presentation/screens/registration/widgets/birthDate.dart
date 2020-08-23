import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/2_application/registration/patient_registration_bloc/patient_registration_controller.dart';

class BirthDateWidget extends StatelessWidget {
  const BirthDateWidget({
    @required this.chooseBirthDate,
    @required this.curBirthDate,
    @required this.displayBirthDate,
    @required this.dispBirthDateError,
  });
  final Function chooseBirthDate;
  final DateTime curBirthDate;
  final String displayBirthDate;
  final String dispBirthDateError;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.transparent,
      onPressed: () => showDatePicker(
        context: Get.context,
        locale: Get.locale,
        initialDate: curBirthDate,
        firstDate: DateTime(1900, 1, 1),
        lastDate: DateTime(2999, 12, 31),
      ).then(
          (date) => chooseBirthDate(PatientRegistrationEvent.birthDate(date))),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(Icons.calendar_today, size: 64.0),
              Column(
                children: [
                  Text(
                    '${"Date of Birth".tr} $displayBirthDate',
                    style: Get.theme.textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    dispBirthDateError.tr,
                    style: const TextStyle(fontSize: 12.0, color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
