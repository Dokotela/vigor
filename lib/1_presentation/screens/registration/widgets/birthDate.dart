import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BirthDateWidget extends StatelessWidget {
  const BirthDateWidget({
    @required this.chooseBirthDate,
    @required this.currentBirthDate,
    @required this.displayBirthDate,
    @required this.dispBirthDateError,
  });
  final Function chooseBirthDate;
  final DateTime currentBirthDate;
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
        initialDate: currentBirthDate,
        firstDate: DateTime(1900, 1, 1),
        lastDate: DateTime(2999, 12, 31),
      ).then((date) => chooseBirthDate(date ?? currentBirthDate)),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(Icons.calendar_today, size: 64.0),
              Column(
                children: [
                  Text(
                    '${"Date of Birth".tr} $displayBirthDate',
                    style: Get.theme.textTheme.headline6,
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
