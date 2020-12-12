import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

class BirthDateWidget extends StatelessWidget {
  const BirthDateWidget({
    @required this.birthDate,
    @required this.chooseBirthDate,
    @required this.displayBirthDate,
    @required this.dispBirthDateError,
  });

  final DateTime birthDate;
  final Function chooseBirthDate;
  final String displayBirthDate;
  final String dispBirthDateError;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${labels.general.dateofBirth}',
              style: Get.theme.textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: () => showDatePicker(
                  context: Get.context,
                  locale: Get.locale,
                  initialDate: birthDate == DateTime(1900, 1, 1)
                      ? DateTime.now()
                      : birthDate,
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
                    birthDate == DateTime(1900, 1, 1)
                        ? Text(
                            '           ',
                            style: Get.theme.textTheme.bodyText1,
                          )
                        : Text(
                            displayBirthDate,
                            style: Get.theme.textTheme.bodyText1,
                          ),
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
