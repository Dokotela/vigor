import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/locale_controller.dart';
import 'package:vigor/controllers/theme_controller.dart';
import 'package:vigor/models/data/menu_option.dart';

/// this was taken directly from John's repo: https://github.com/FireJuun/prapare
/// specifically, https://github.com/FireJuun/prapare/blob/main/lib/ui/views/settings/settings_controller.dart
///
class SettingsController extends GetxController {
  static SettingsController get to => Get.find();

  final ThemeController _themeController = Get.find();
  final LocaleController _localeController = Get.find();

  // _rxThemeMode necessary for dynamic loading of various themes
  // defaults to system on first load, then changes theme based on preferences
  Rx<ThemeMode> _rxThemeMode;
  ThemeMode get rxThemeMode => _rxThemeMode.value;
  set rxThemeMode(ThemeMode value) => _rxThemeMode.value = value;

  Future<void> setThemeMode(ThemeMode obj) async {
    await _themeController.setThemeMode(obj);
    _rxThemeMode.value = obj;
    update();
  }

  // _rxLanguage necessary for dynamic loading of locale checkbox
  // defaults to system on first load, then changes based on preferences
  RxString _rxLanguage;
  String get rxLanguage => _rxLanguage.value;
  set rxLanguage(value) => _rxLanguage.value = value;

  Future<void> setLocale(String obj) async {
    await _localeController.updateLanguage(obj);
    _rxLanguage.value = obj;
    Get.forceAppUpdate();
    update();
  }

  List<MenuOption> getlanguageOptions() => _localeController.languageOptions;

  @override
  void onInit() {
    _rxThemeMode = _themeController.themeMode.obs;
    _rxLanguage = _localeController.currentLanguage.obs;
    super.onInit();
  }
}
