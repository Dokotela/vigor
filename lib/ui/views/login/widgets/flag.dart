import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlagWidget extends StatelessWidget {
  const FlagWidget(this.country);

  final String country;

  @override
  Widget build(Object context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: Get.height * .3,
        width: Get.width * .5,
        child: Image(
          image: AssetImage('assets/img/flags/$country.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
