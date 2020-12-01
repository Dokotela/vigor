import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    @required this.curGender,
    @required this.setGender,
  });

  final bool curGender;
  final Function setGender;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    /// turns the boolean into the string for the radio buttons
    String _whichGender(bool curGender) => curGender
        ? labels.general.sexAtBirth.female
        : labels.general.sexAtBirth.male;

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
              /// displays translated word for female, checks if current value
              /// is true or false, true is female, false is male
              Radio(
                value: labels.general.sexAtBirth.female,
                groupValue: _whichGender(curGender),
                onChanged: (_) => setGender(true),
              ),
              Text(labels.general.sexAtBirth.female,
                  style: Get.theme.textTheme.headline6),

              /// displays translated word for male, checks if current value
              /// is true or false, true is female, false is male
              Radio(
                value: labels.general.sexAtBirth.male,
                groupValue: _whichGender(curGender),
                onChanged: (_) => setGender(false),
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
