// spec: https://github.com/delay/flutter_starter
// https://gist.github.com/RodBr/37310335c6639f486bb3c8a628052405
// https://medium.com/swlh/flutter-dynamic-themes-in-3-lines-c3b375f292e3

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../ui/settings/themes.dart';

/// As usual, mostly stolen from John.
/// https://github.com/FireJuun/prapare/blob/main/lib/controllers/theme_controller.dart

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  /// PROPERTIES
  final _themeMode = ThemeMode.system.obs;
  final store = GetStorage();
  final _key = 'theme';

  /// INIT
  /// ONREADY
  @override
  Future onInit() async {
    await getThemeModeFromStore();
    super.onInit();
  }

  /// GETTER Functions
  Future getThemeModeFromStore() async {
    _themeMode.value = _isDarkMode() ? ThemeMode.dark : ThemeMode.light;
    await setThemeMode(_themeMode.value);
  }

  bool _isDarkMode() => store.read(_key) ?? false;
  // App Themes (Light vs Dark)
  ThemeMode get themeMode => _themeMode.value;
  AppTheme get lightTheme => AppTheme.fromType(ThemeType.Vigor);
  AppTheme get darkTheme => AppTheme.fromType(ThemeType.Vigor_Dark);
  AppTheme getAppTheme({Brightness brightness}) =>
      _themeMode.value == ThemeMode.light
          ? lightTheme
          : _themeMode.value == ThemeMode.dark
              ? darkTheme
              : brightness == Brightness.light
                  ? lightTheme
                  : darkTheme;

  /// SETTER Functions
  Future<void> setThemeMode(ThemeMode theme) async {
    _themeMode.value = theme;
    Get.changeThemeMode(_themeMode.value);
    await store.write(_key, theme == ThemeMode.dark);
    update();
  }

  // checks whether darkmode is set via system or previously by user
  bool get isDarkModeOn {
    if (_themeMode.value == ThemeMode.system) {
      if (WidgetsBinding.instance.window.platformBrightness ==
          Brightness.dark) {
        return true;
      }
    } else if (_themeMode.value == ThemeMode.dark) {
      return true;
    }
    return false;
  }
}
