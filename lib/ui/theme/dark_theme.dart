part of 'app_theme.dart';

ThemeData get darkTheme {
  var t = ThemeData.from(
    textTheme: _buildTextTheme(),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xff00a086),
        primaryVariant: Color(0xff00caa5),
        secondary: Color(0xfff19e46),
        secondaryVariant: Color(0xff00caa5),
        background: Color(0xff121212),
        surface: Color(0xff252525),
        onBackground: Colors.white,
        onSurface: Colors.white,
        onError: Colors.white,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        error: Colors.red.shade400),
  );
  return t.copyWith(
      typography: Typography.material2018(),
      accentTextTheme: _buildTextTheme().apply(bodyColor: Colors.black),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionHandleColor: Colors.transparent,
      buttonColor: Color(0xff00a086),
      cursorColor: Color(0xff00a086),
      highlightColor: Color(0xff00a086),
      toggleableActiveColor: Color(0xff00a086));
}
