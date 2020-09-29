import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class InfoBannerWidget extends StatelessWidget {
  const InfoBannerWidget({
    @required this.name,
    @required this.birthDate,
    @required this.sex,
  });

  final String name;
  final String birthDate;
  final String sex;
  static const localTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('${"Name".tr}: $name', style: localTextStyle),
        Text('${"Birthdate".tr}: $birthDate', style: localTextStyle),
        Text('${"Sex".tr}: $sex', style: localTextStyle),
      ],
    );
  }
}
