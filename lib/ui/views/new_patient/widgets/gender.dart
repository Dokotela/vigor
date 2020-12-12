import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    @required this.genderTypes,
    @required this.displayGender,
    @required this.setGender,
    @required this.genderError,
  });

  final List<String> genderTypes;
  final String displayGender;
  final Function setGender;
  final String genderError;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              labels.general.sexAtBirth.title,
              style: Get.theme.textTheme.bodyText1,
            ),
            SizedBox(width: Get.width / 15),
            DropdownButton<String>(
              value: displayGender,
              icon: Icon(Icons.keyboard_arrow_down),
              items: genderTypes.map(
                (String gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(
                      gender,
                      style: Get.textTheme.bodyText1,
                    ),
                  );
                },
              ).toList(),
              onChanged: (newVal) => setGender(newVal),
            ),
          ],
        ),
        Text(
          genderError,
          style: Get.theme.textTheme.caption
              .copyWith(color: Get.theme.colorScheme.error),
        ),
      ],
    );
  }
}
