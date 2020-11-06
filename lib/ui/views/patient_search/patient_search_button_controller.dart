import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientSearchButtonController extends GetxController {
  var color1 = Colors.grey;
  var color2 = Colors.grey;

  void switchColor1() {
    color1 = color1 == Colors.grey ? Colors.blue : Colors.grey;
    update();
  }

  void switchColor2() {
    color2 = color2 == Colors.grey ? Colors.blue : Colors.grey;
    update();
  }
}
