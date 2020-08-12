import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientSearchController extends GetxController {
  final searchName = TextEditingController();
  final _color1 = Colors.grey.obs;
  final _color2 = Colors.grey.obs;

  MaterialColor getColor1() => _color1.value;
  MaterialColor getColor2() => _color2.value;
  void switchColor1() {
    _color1.value = _color1.value == Colors.grey ? Colors.blue : Colors.grey;
    update();
  }

  void switchColor2() {
    _color2.value = _color2.value == Colors.grey ? Colors.blue : Colors.grey;
    update();
  }
}
