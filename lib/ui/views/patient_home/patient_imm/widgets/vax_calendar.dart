import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../localization.dart';

class VaxCalendarWidget extends StatelessWidget {
  const VaxCalendarWidget({
    @required this.selectNewDate,
    @required this.currentDate,
    @required this.displayDate,
  });
  final Function selectNewDate;
  final DateTime currentDate;
  final String displayDate;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return RaisedButton(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.transparent,
      onPressed: () => showDatePicker(
        context: Get.context,
        locale: Get.locale,
        initialDate: currentDate,
        firstDate: DateTime(1900, 1, 1),
        lastDate: DateTime(2999, 12, 31),
      ).then((date) => selectNewDate(date ?? currentDate)),
      child: Row(
        children: [
          const Icon(Icons.calendar_today, size: 64.0),
          Text(
            'new date:\n $displayDate',
            style: Get.theme.textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
