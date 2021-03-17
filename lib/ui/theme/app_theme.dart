// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'text_themes.dart';
part 'light_theme.dart';
part 'dark_theme.dart';

// AppTheme inspired by: https://github.com/gskinnerTeam/flokk
// The main exception is that we're using Get instead of Provider for AppTheme
// Thus, we use the ThemeController to directly call AppTheme
// and context.textTheme (instead of Get.textTheme) to ensure the theme is mutable
enum ThemeType {
  Vigor_Light,
  Vigor_Dark,
}

abstract class AppTheme {
  static ThemeData fromType([ThemeType? t]) {
    switch (t) {
      case ThemeType.Vigor_Dark:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}
