// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// AppTheme inspired by: https://github.com/gskinnerTeam/flokk
// The main exception is that we're using Get instead of Provider for AppTheme
// Thus, we use the ThemeController to directly call AppTheme
// and context.textTheme (instead of Get.textTheme) to ensure the theme is mutable
enum ThemeType { Vigor, Vigor_Dark }

class AppTheme {
  bool isDark;
  Color bg1;
  Color bg2;
  Color surface;
  Color primary;
  Color primaryVariant;
  Color secondary;
  Color secondaryVariant;
  Color heading1;
  Color heading2;
  Color heading3;
  Color heading4;
  Color heading5;
  Color error;
  Color focus;

  Color txt;
  Color accentTxt;

  /// Default constructor
  AppTheme({
    this.isDark = false,
    this.bg1 = Colors.white,
    this.bg2 = _AppColors.bannerBlue,
    this.surface = Colors.white,
    this.primary = _AppColors.bannerBlue,
    this.primaryVariant = _AppColors.bannerBlue,
    this.secondary = _AppColors.orange,
    this.secondaryVariant = _AppColors.orangeDark,
    this.heading1 = _AppColors.orangeRed,
    this.heading2 = _AppColors.blue,
    this.heading3 = _AppColors.red,
    this.heading4 = _AppColors.blueGreen,
    this.heading5 = _AppColors.grey,
    this.error = _AppColors.redDarkMode,
    this.focus = _AppColors.grey,
    this.txt = Colors.black,
    this.accentTxt = _AppColors.textDark,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.Vigor_Dark:
        return AppTheme(
          isDark: true,
          bg1: _AppColors.blackBackground,
          bg2: _AppColors.bannerBlue,
          surface: _AppColors.blackSurface,
          primary: _AppColors.bannerBlue,
          primaryVariant: _AppColors.blue,
          secondary: _AppColors.orangeDark,
          secondaryVariant: _AppColors.orange,
          heading1: _AppColors.orangeRedDarkMode,
          heading2: _AppColors.blueDarkMode,
          heading3: _AppColors.redDarkMode,
          heading4: _AppColors.blueGreenDarkMode,
          heading5: _AppColors.greyDarkMode,
          error: _AppColors.redDarkMode,
          focus: _AppColors.grey,
          txt: _AppColors.textDark,
          accentTxt: _AppColors.textLight,
        );

      default:
        return AppTheme();
    }
  }

  TextTheme _buildTextTheme() {
    return TextTheme(
      headline1: _style(96.0, FontWeight.normal),
      headline2: _style(60.0, FontWeight.bold),
      headline3: _style(48.0, FontWeight.normal),
      headline4: _style(36.0, FontWeight.bold),
      headline5: _style(30.0, FontWeight.normal),
      headline6: _style(20.0, FontWeight.w500),
      bodyText1: _style(18.0, FontWeight.normal),
      bodyText2: _style(14.0, FontWeight.normal),
      subtitle1: _style(16.0, FontWeight.normal),
      subtitle2: _style(14.0, FontWeight.normal),
      button: _style(18.0, FontWeight.normal),
      caption: _style(12.0, FontWeight.normal),
      overline: _style(16.0, FontWeight.normal),
    ).apply(fontFamily: 'Lato');
  }

  TextStyle _style(double s, FontWeight w) =>
      TextStyle(fontSize: s, fontWeight: w);

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: _buildTextTheme(),
      colorScheme: ColorScheme(
          brightness: isDark ? Brightness.dark : Brightness.light,
          primary: primary,
          primaryVariant: primaryVariant,
          secondary: secondary,
          secondaryVariant: secondaryVariant,
          background: bg1,
          surface: surface,
          onBackground: txt,
          onSurface: txt,
          onError: txt,
          onPrimary: accentTxt,
          onSecondary: accentTxt,
          error: error ?? Colors.red.shade400),
    );
    return t.copyWith(
        typography: Typography.material2018(),
        accentTextTheme: _buildTextTheme().apply(bodyColor: accentTxt),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textSelectionHandleColor: Colors.transparent,
        buttonColor: primary,
        cursorColor: primary,
        highlightColor: primary,
        toggleableActiveColor: primary);
  }
}

// // All colors used in this app can be accessed from this list
// // Colors are combined in varying ways to set the themes below
class _AppColors {
  static const Color bannerBlue = Color(0xFF0D47A1);

  static const Color orange = Color(0xFFE1994C);
  //this is the orange color only used for the surface of the "New Survey" button on the home screen
  static const Color orangeDark = Color(0xFFd1893C);
  //this is the orange color only used for the surface of the "New Survey" button on the home screen in dark mode
  static const Color orangeRed = Color(0xFFCA542B);
  //this is the orange (slightly red) color in the light mode "Personal Characteristics" banner
  static const Color orangeRedDarkMode = Color(0xFFB16C54);
  //this is the dark mode "personal characteristics" banner - 773422
  static const Color red = Color(0xff621c1c);
  //this is the light mode "money and resources" banner
  static const Color redDarkMode = Color(0xFF984F46);
  //this is the dark mode "money and resources" banner
  static const Color blue = Color(0xFF567599);
  //this is the light mode "family and home" banner color
  static const Color blueDarkMode = Color(0xFF5087AC);
  //this is the dark mode "family and home" banner - FF002F4E
  static const Color blueGreen = Color(0xFF005A6C);
  //this is the light mode "social and emotional health" banner
  static const Color blueGreenDarkMode = Color(0xFF277787);
  // deep royal blue

  //this is the dark mode "social and emotional health" banner
  static const Color greySurface = Color(0xFFE4E4E3);
  //not currently being used
  static const Color grey = Color(0xFF636463);
  //this is the light mode "optional measures" banner
  static const Color greyDarkMode = Color(0xFF868686);
  //this is the dark mode "optional measures" banner
  static const Color blackSurface = Color(0xff050505);
  //not currently being used
  static const Color blackBackground = Color(0xff181818);
  //this is the dark mode color used for the home view background and the settings menu
  static const Color textDark = Colors.white;
  //this is the text color for the dark mode banners (personal characteristics, family and home, etc)
  static const Color textLight = Color(0xFFf7f7f7);
  //this is the text color for the light mode banners (personal characteristics, family and home, etc)
}
