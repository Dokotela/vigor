part of 'app_theme.dart';

ThemeData get lightTheme {
  var t = ThemeData.from(
    textTheme: _buildTextTheme(),
    colorScheme: ColorScheme(
      /// overall brightness of this color scheme
      brightness: Brightness.light,

      /// color displayed most frequently across your app’s screens and components
      primary: Colors.white,

      /// darker version of the primary color
      primaryVariant: Colors.white,

      /// color that's clearly legible when drawn on primary
      onPrimary: Color(0xff353AE0),

      /// accent color that, when used sparingly, calls attention to parts of
      /// your app.
      secondary: Color(0xffF60B0B),

      /// A darker version of the secondary color.
      secondaryVariant: Color(0xff900C3F),

      /// color that's clearly legible when drawn on secondary
      onSecondary: Colors.black,

      ///  color that typically appears behind scrollable content.
      background: Colors.white,

      /// color that's clearly legible when drawn on background
      onBackground: Colors.black,

      /// background color for widgets like Card
      surface: Colors.blue,

      /// color that's clearly legible when drawn on surface
      onSurface: Colors.black,

      /// color to use for input validation errors
      error: Colors.red.shade400,

      /// color that's clearly legible when drawn on error
      onError: Colors.black,
    ),
  );
  return t.copyWith(
    typography: Typography.material2018(),
    accentTextTheme: _buildTextTheme().apply(bodyColor: Colors.white),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    textSelectionHandleColor: Colors.transparent,
    buttonColor: Color(0xff353AE0),
    cursorColor: Color(0xff353AE0),
    highlightColor: Color(0xff353AE0),
    toggleableActiveColor: Color(0xff353AE0),
    dividerColor: Colors.black,
  );
}
