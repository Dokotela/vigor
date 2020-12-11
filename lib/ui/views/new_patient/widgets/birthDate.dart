import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

class BirthDateWidget extends StatelessWidget {
  const BirthDateWidget({
    @required this.date,
    @required this.chooseBirthDate,
    @required this.displayBirthDate,
    @required this.dispBirthDateError,
  });

  final DateTime date;
  final Function chooseBirthDate;
  final String displayBirthDate;
  final String dispBirthDateError;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${labels.general.dateofBirth}',
          style: Get.theme.textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () => showDatePicker(
                  context: Get.context,
                  locale: Get.locale,
                  initialDate:
                      date == DateTime(1900, 1, 1) ? DateTime.now() : date,
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2999, 12, 31),
                  builder: (BuildContext context, child) {
                    return Theme(
                      data: Get.theme.copyWith(
                        colorScheme: Get.theme.colorScheme.copyWith(
                            primary: Get.theme.colorScheme.onPrimary,
                            onPrimary: Get.theme.colorScheme.primary),
                      ),
                      child: child,
                    );
                  }).then((date) => chooseBirthDate(date)),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[300])),
                ),
                child: Row(
                  children: [
                    date == DateTime(1900, 1, 1)
                        ? Text('          ')
                        : Text(displayBirthDate),
                    SizedBox(width: Get.width / 20),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          dispBirthDateError.tr,
          style: const TextStyle(fontSize: 12.0, color: Colors.red),
        ),
      ],
    );
  }
}
