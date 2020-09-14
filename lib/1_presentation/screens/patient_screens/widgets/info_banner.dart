import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class InfoBannerWidget extends StatelessWidget {
  const InfoBannerWidget({
    @required this.lastCommaFirstName,
    @required this.id,
    @required this.birthDate,
    @required this.relativeAge,
    @required this.sex,
  });

  final String lastCommaFirstName;
  final String id;
  final String birthDate;
  final String relativeAge;
  final String sex;
  static const localTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('${"Name".tr}: $lastCommaFirstName', style: localTextStyle),
        Text('${"ID"}: $id', style: localTextStyle),
        Text('${"Age"}: $relativeAge', style: localTextStyle),
        Text('${"Birthdate".tr}: $birthDate', style: localTextStyle),
        Text('${"Sex".tr}: $sex', style: localTextStyle),
      ],
    );
  }
}
