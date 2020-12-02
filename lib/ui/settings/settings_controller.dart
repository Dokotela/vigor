import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/locale_controller.dart';
import 'package:vigor/controllers/theme_controller.dart';
import 'package:vigor/models/data/menu_option.dart';

import 'themes.dart';

/// this was taken directly from John's repo: https://github.com/FireJuun/prapare
/// specifically, https://github.com/FireJuun/prapare/blob/main/lib/ui/views/settings/settings_controller.dart
///
class SettingsController extends GetxController {
  static SettingsController get to => Get.find();

  /// PROPERTIES
  final ThemeController _themeController = Get.find();
  final LocaleController _localeController = Get.find();

  /// GETTER Functions
  List<MenuOption> getlanguageOptions() => _localeController.languageOptions;
  ThemeMode get themeMode => _themeController.themeMode;
  String get language => _localeController.currentLanguage;
  AppTheme get appTheme => _themeController.getAppTheme();

  /// SETTER Functions
  Future setThemeMode(ThemeMode obj) async =>
      await _themeController.setThemeMode(obj);

  Future setLocale(String obj) async =>
      await _localeController.updateLanguage(obj);
}
