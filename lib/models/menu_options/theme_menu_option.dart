// spec: https://github.com/delay/flutter_starter
// Model class to hold menu option data (language and theme)
import 'package:flutter/material.dart';

class ThemeMenuOption {
  ThemeMenuOption(
      {required this.key,
      required this.value,
      required this.englishValue,
      this.icon});

  ThemeMode key;
  String value;
  String englishValue;
  IconData icon;
}
