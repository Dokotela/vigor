// spec: https://github.com/delay/flutter_starter
// Model class to hold menu option data (language and theme)
import 'package:flutter/material.dart';

class MenuOption {
  MenuOption({this.key, this.value, this.icon});

  String key;
  String value;
  IconData icon;
}
