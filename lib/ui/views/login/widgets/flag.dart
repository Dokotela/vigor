import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlagWidget extends StatelessWidget {
  const FlagWidget();

  // final String country;

  @override
  Widget build(Object context) {
    return Container(
      height: Get.height * .2,
      width: Get.width * .3,
      child: Image(
        image: AssetImage('assets/img/flags/DR.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}
