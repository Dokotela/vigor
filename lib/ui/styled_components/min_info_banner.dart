import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../localization.dart';

class MinInfoBanner extends StatelessWidget {
  const MinInfoBanner({
    required this.name,
    required this.birthDate,
  });

  final String name;
  final String birthDate;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context)!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${labels.name.title}: $name',
              style:
                  Get.textTheme!.headline6!.copyWith(fontSize: Get.width / 18),
            ),
            SizedBox(height: 4.0),
            Text(
              '${labels.birthDate.title}: $birthDate',
              style:
                  Get.textTheme!.headline6!.copyWith(fontSize: Get.width / 18),
            ),
          ],
        ),
      ],
    );
  }
}
