import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientSearchViewController extends GetxController {
  final firstColor = Colors.grey.obs;
  final secondColor = Colors.grey.obs;

  MaterialColor get color1 => firstColor.value;
  MaterialColor get color2 => secondColor.value;

  void switchColor1() => firstColor.value =
      firstColor.value == Colors.grey ? Colors.blue : Colors.grey;

  void switchColor2() => secondColor.value =
      secondColor.value == Colors.grey ? Colors.blue : Colors.grey;
}
