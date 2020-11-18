import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    @required this.curGender,
    @required this.setGender,
  });

  final String curGender;
  final Function setGender;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Container(
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
                labels.general.sexAtBirth.title,
                style: Get.theme.textTheme.headline6,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value:
                    'female', // todo: extract to strings.dart or /_internal/constants
                groupValue: curGender,
                onChanged: (String gender) => setGender(gender),
              ),
              Text(labels.general.sexAtBirth.female,
                  style: Get.theme.textTheme.headline6),
              Radio(
                value:
                    'male', // todo: extract to strings.dart or /_internal/constants
                groupValue: curGender,
                onChanged: (String gender) => setGender(gender),
              ),
              Text(labels.general.sexAtBirth.male,
                  style: Get.theme.textTheme.headline6),
            ],
          ),
        ],
      ),
    );
  }
}
