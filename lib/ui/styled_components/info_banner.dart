import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../localization.dart';

class InfoBannerWidget extends StatelessWidget {
  const InfoBannerWidget({
    @required this.name,
    @required this.id,
    @required this.birthDate,
    @required this.relativeAge,
    @required this.sex,
  });

  final String name;
  final String id;
  final String birthDate;
  final String relativeAge;
  final String sex;

  @override
  Widget build(Object context) {
    final labels = AppLocalizations.of(context);
    const _spacerV = SizedBox(height: 4.0);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${labels.general.name.name}: $name',
            style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 20),
          ),
          _spacerV,
          Text(
            '${labels.general.birthDate}: $birthDate',
            style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 20),
          ),
          _spacerV,
          Text(
            'Age: $relativeAge',
            style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 20),
          ),
          _spacerV,
          Text(
            '${labels.general.sexAtBirth.title}: $sex',
            style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 20),
          ),
          _spacerV,
          Text(
            'ID: $id',
            style: Get.textTheme.headline6.copyWith(fontSize: Get.width / 20),
          ),
        ],
      ),
    );
  }
}
