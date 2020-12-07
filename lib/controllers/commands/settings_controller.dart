// spec: https://github.com/delay/flutter_starter
// https://gist.github.com/RodBr/37310335c6639f486bb3c8a628052405
// https://medium.com/swlh/flutter-dynamic-themes-in-3-lines-c3b375f292e3

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/models/data/menu_option.dart';
import 'package:vigor/ui/theme/app_theme.dart';

import '../../localization.dart';

/// Previously taken directly from John's repo:
/// https://github.com/FireJuun/prapare
/// specifically:
/// https://github.com/FireJuun/prapare/blob/main/lib/ui/views/settings/settings_controller.dart
/// I've since decided to consolidate, and include theme AND locale into one
/// controller, I realize this isn't completely separation of responsibilities,
/// but I've decided since I'm almost always going to display these together
/// (at least for the time being), I'm going to include them together here

class SettingsController extends GetxController {
  static SettingsController get to => Get.find();

  /// PROPERTIES
  ///
  /// current themeMode
  final _themeMode = ThemeMode.system.obs;

  /// where we're going to store the theme & location
  final store = GetStorage();

  /// key for theme
  final _key = 'vigorTheme';

  /// current language
  final _currentLanguage = ''.obs;

  /// allowable language selection
  final List<MenuOption> languageOptions = availableLanguages;

  /// key for language
  final String _language = 'vigorLanguage';

  /// INIT
  @override
  Future onInit() async {
    await setThemeModeFromStore();
    setInitialLocalLanguage();
    super.onInit();
  }

  /// GETTER Functions
  ThemeMode get themeMode => _themeMode.value;
  ThemeData get lightTheme => appTheme(t: ThemeType.Vigor_Light);
  ThemeData get darkTheme => appTheme(t: ThemeType.Vigor_Dark);

  /// checks if theme is set, otherwise uses brightness to set it
  ThemeData getAppTheme({Brightness brightness}) =>
      _themeMode.value == ThemeMode.light
          ? lightTheme
          : _themeMode.value == ThemeMode.dark
              ? darkTheme
              : brightness == Brightness.light
                  ? lightTheme
                  : darkTheme;

  /// if darkmode is not stored, defaults to light theme
  bool _isDarkMode() => store.read(_key) ?? false;
  // bool get isDarkModeOn {
  //   if (_themeMode.value == ThemeMode.system) {
  //     if (WidgetsBinding.instance.window.platformBrightness ==
  //         Brightness.dark) {
  //       return true;
  //     }
  //   } else if (_themeMode.value == ThemeMode.dark) {
  //     return true;
  //   }
  //   return false;
  // }

  /// current active language
  String get currentLanguage => _currentLanguage.value;

  /// Gets current language stored
  String currentLanguageStore() => store.read(_language) ?? '';

  /// gets the language locale app is set to
  Locale get getLocale {
    if (currentLanguageStore().isEmpty) {
      _currentLanguage.value = defaultLanguage;
      updateLanguage(defaultLanguage);
    }

    // gets the default language key (from the translation language system)
    // looks for matching language key stored and sets to it
    return AppLocalizations.languages.keys.firstWhere(
        (locale) => locale.languageCode == currentLanguage,
        orElse: () => AppLocalizations.languages.keys.first);
  }

  /// SETTER Functions
  Future setThemeModeFromStore() async =>
      await setThemeMode(_isDarkMode() ? ThemeMode.dark : ThemeMode.light);

  Future setThemeMode(ThemeMode obj) async {
    _themeMode.value = obj;
    Get.changeThemeMode(_themeMode.value);
    await store.write(_key, obj == ThemeMode.dark);
    update();
  }

  // Retrieves and Sets language based on device settings
  void setInitialLocalLanguage() {
    if (currentLanguageStore().isEmpty) {
      String _deviceLanguage = ui.window.locale.toString();
      print(ui.window.locale.toString());
      //only get 1st 2 characters
      updateLanguage(_deviceLanguage.substring(0, 2));
    } else {
      updateLanguage(currentLanguageStore());
    }
  }

  // updates the language stored
  Future updateLanguage(String value) async {
    _currentLanguage.value = value;
    await store.write(_language, value);
    Get.updateLocale(getLocale);
    update();
  }
}
