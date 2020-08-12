import 'package:flutter/material.dart';

abstract class MyTextTheme {
  static TextTheme buildLightTextTheme() => _buildTextTheme();
  static TextTheme buildDarkTextTheme() => _buildTextTheme();

  static TextTheme _buildTextTheme() => TextTheme(
        headline1: _getTextStyle(96, FontWeight.w100),
        headline2: _getTextStyle(60, FontWeight.w100),
        headline3: _getTextStyle(32, FontWeight.w800),
        headline4: _getTextStyle(24, FontWeight.w800),
        headline5: _getTextStyle(20, FontWeight.w400),
        headline6: _getTextStyle(22, FontWeight.bold),
        subtitle1: _getTextStyle(20, FontWeight.bold),
        subtitle2: _getTextStyle(18, FontWeight.w300),
        bodyText1: _getTextStyle(16, FontWeight.normal),
        bodyText2: _getTextStyle(18, FontWeight.normal),
        caption: _getTextStyle(12, FontWeight.normal),
        button: _getTextStyle(20, FontWeight.w400),
        overline: _getTextStyle(11, FontWeight.normal),
      );

  static TextStyle _getTextStyle(double size, FontWeight fontWeight) =>
      TextStyle(fontSize: size, fontWeight: fontWeight, color: Colors.white70);
}
