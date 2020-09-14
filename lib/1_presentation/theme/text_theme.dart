import 'package:flutter/material.dart';

abstract class MyTextTheme {
  static TextTheme buildLightTextTheme() => _buildTextTheme(Colors.black);
  static TextTheme buildDarkTextTheme() => _buildTextTheme(Colors.white70);

  static TextTheme _buildTextTheme(Color textColor) => TextTheme(
        headline1: _getTextStyle(96, FontWeight.w100, textColor),
        headline2: _getTextStyle(60, FontWeight.w100, textColor),
        headline3: _getTextStyle(40, FontWeight.w600, textColor), // app title
        headline4: _getTextStyle(28, FontWeight.w400, textColor), // buttons
        headline5: _getTextStyle(20, FontWeight.w400, textColor),
        headline6: _getTextStyle(22, FontWeight.bold, textColor),
        subtitle1: _getTextStyle(20, FontWeight.bold, textColor),
        subtitle2: _getTextStyle(18, FontWeight.w300, textColor),
        bodyText1: _getTextStyle(16, FontWeight.normal, textColor),
        bodyText2: _getTextStyle(18, FontWeight.normal, textColor),
        caption: _getTextStyle(12, FontWeight.normal, textColor),
        button: _getTextStyle(20, FontWeight.w400, textColor),
        overline: _getTextStyle(11, FontWeight.normal, textColor),
      );

  static TextStyle _getTextStyle(
          double size, FontWeight fontWeight, Color textColor) =>
      TextStyle(fontSize: size, fontWeight: fontWeight, color: textColor);
}
