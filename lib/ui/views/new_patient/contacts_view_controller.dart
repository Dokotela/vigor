import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsViewController extends GetxController {
  Widget getOrder(int order) {
    switch (order) {
      case 1:
        return Icon(Icons.keyboard_arrow_down);
      case 2:
        return Icon(Icons.keyboard_arrow_up);
      default:
        return Text('');
    }
  }
}
