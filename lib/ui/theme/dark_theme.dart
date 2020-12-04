part of 'app_theme.dart';

ThemeData get darkTheme {
  var t = ThemeData.from(
    textTheme: _buildTextTheme(),
    colorScheme: ColorScheme(
      /// overall brightness of this color scheme
      brightness: Brightness.dark,

      /// color displayed most frequently across your app’s screens and components
      primary: Colors.black,

      /// darker version of the primary color
      primaryVariant: Colors.black,

      /// color that's clearly legible when drawn on primary
      onPrimary: Colors.white,

      /// accent color that, when used sparingly, calls attention to parts of
      /// your app.
      secondary: Color(0xfff19e46),

      /// A darker version of the secondary color.
      secondaryVariant: Color(0xffFF5733),

      /// color that's clearly legible when drawn on secondary
      onSecondary: Colors.black,

      ///  color that typically appears behind scrollable content.
      background: Colors.black,

      /// color that's clearly legible when drawn on background
      onBackground: Colors.white,

      /// background color for widgets like Card
      surface: Color(0xff252525),

      /// color that's clearly legible when drawn on surface
      onSurface: Colors.white,

      /// color to use for input validation errors
      error: Colors.red.shade400,

      /// color that's clearly legible when drawn on error
      onError: Colors.white,
    ),
  );
  return t.copyWith(
    typography: Typography.material2018(),
    accentTextTheme: _buildTextTheme().apply(bodyColor: Colors.black),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    textSelectionHandleColor: Colors.transparent,
    buttonColor: Color(0xff353AE0),
    cursorColor: Color(0xff353AE0),
    highlightColor: Color(0xff353AE0),
    toggleableActiveColor: Color(0xff353AE0),
  );
}
