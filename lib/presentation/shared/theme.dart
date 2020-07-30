import 'package:flutter/material.dart';

abstract class ThemeClass {
  static ThemeData light() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: Colors.blue[300],
        accentColor: Colors.red[600],
        textTheme: _lightTextTheme,
      );

  static ThemeData dark() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primaryColor: Colors.blue[900],
        accentColor: Colors.red[600],
        textTheme: _darkTextTheme,
      );
}

TextTheme _lightTextTheme = _buildTextTheme();
TextTheme _darkTextTheme = _buildTextTheme();

TextTheme _buildTextTheme() => TextTheme(
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

TextStyle _getTextStyle(double size, FontWeight fontWeight) =>
    TextStyle(fontSize: size, fontWeight: fontWeight);

//     // Customize Themes
//     appBarTheme: _buildAppBarTheme(textTheme),
//     iconTheme: iconTheme,
//     primaryIconTheme: iconTheme.copyWith(color: _AppColors.primary),

//     // Misc
//     buttonTheme: ButtonThemeData(
//       buttonColor: _AppColors.primary,
//       textTheme: ButtonTextTheme.primary,
//     ),
//     unselectedWidgetColor: _AppColors.disabledWidget,
//     textTheme: textTheme.apply(
//       displayColor: _AppColors.primary,
//       bodyColor: _AppColors.primary,
//     ),
//   );
// }

// /// ******* Custom Themes *******
// AppBarTheme _buildAppBarTheme(TextTheme textTheme) {
//   return AppBarTheme(
//     textTheme: textTheme.apply(displayColor: _AppColors.primary),
//   );
// }

// IconThemeData _buildIconTheme() {
//   return const IconThemeData(color: _AppColors.primary, size: 32);
// }
