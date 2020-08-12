import 'package:flutter/material.dart';

import 'text_theme.dart';

abstract class ThemeClass {
  static ThemeData light() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: Colors.blue[300],
        accentColor: Colors.red[600],
        textTheme: MyTextTheme.buildLightTextTheme(),
      );

  static ThemeData dark() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primaryColor: Colors.blue[900],
        accentColor: Colors.red[600],
        textTheme: MyTextTheme.buildDarkTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.blue, width: 24.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          ),
        ),
      );
}

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
