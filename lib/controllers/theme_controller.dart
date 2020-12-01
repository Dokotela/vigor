// spec: https://github.com/delay/flutter_starter
// https://gist.github.com/RodBr/37310335c6639f486bb3c8a628052405
// https://medium.com/swlh/flutter-dynamic-themes-in-3-lines-c3b375f292e3

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../ui/settings/themes.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  final _themeMode = ThemeMode.system.obs;
  final store = GetStorage();
  final _key = 'theme';

  ThemeMode get themeMode => _themeMode.value;

  @override
  void onReady() {
    getThemeModeFromStore();
    super.onReady();
  }

  void getThemeModeFromStore() =>
      _themeMode.value = _isDarkMode() ? ThemeMode.dark : ThemeMode.light;

  bool _isDarkMode() => store.read(_key) ?? false;

  void setThemeMode(ThemeMode theme) {
    Get.changeThemeMode(theme);
    store.write(_key, theme != ThemeMode.dark);
    update();
  }

  // checks whether darkmode is set via system or previously by user
  bool get isDarkModeOn {
    if (themeMode == ThemeMode.system) {
      if (WidgetsBinding.instance.window.platformBrightness ==
          Brightness.dark) {
        return true;
      }
    } else if (themeMode == ThemeMode.dark) {
      return true;
    }
    return false;
  }

  // App Themes (Light vs Dark)
  AppTheme get lightTheme => AppTheme.fromType(ThemeType.Vigor);
  AppTheme get darkTheme => AppTheme.fromType(ThemeType.Vigor_Dark);

  AppTheme getAppThemeFromBrightness(Brightness b) {
    return (b == Brightness.dark) ? darkTheme : lightTheme;
  }
}
