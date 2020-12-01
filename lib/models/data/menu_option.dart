// spec: https://github.com/delay/flutter_starter
// Model class to hold menu option data (language and theme)
import 'package:flutter/material.dart';

class MenuOption<T> {
  MenuOption(
      {@required this.key,
      @required this.value,
      @required this.englishValue,
      this.icon});

  T key;
  String value;
  String englishValue;
  IconData icon;
}
