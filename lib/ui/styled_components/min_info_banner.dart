import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../localization.dart';

class MinInfoBanner extends StatelessWidget {
  const MinInfoBanner({
    @required this.editPatient,
    @required this.name,
    @required this.birthDate,
  });

  final Function editPatient;
  final String name;
  final String birthDate;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(Icons.edit, color: Get.theme.colorScheme.onBackground),
          onPressed: editPatient,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${labels.general.name.name}: $name',
              style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 18),
            ),
            SizedBox(height: 4.0),
            Text(
              '${labels.general.birthDate}: $birthDate',
              style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 18),
            ),
          ],
        ),
      ],
    );
  }
}
