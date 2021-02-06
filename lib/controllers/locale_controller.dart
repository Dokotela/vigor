import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/data/menu_option.dart';
import '../models/menu_options/menu_options_model.dart';
import '../ui/localization.dart';
import 'storage_controller.dart';

// spec: https://github.com/delay/flutter_starter
class LocaleController extends GetxController {
  static LocaleController get to => Get.find();

  final StorageController _data = Get.find();

  final RxString language = ''.obs;
  final List<MenuOption> languageOptions =
      menuOptionslanguageOptions as List<MenuOption>;

  String get currentLanguage => language.value;

  @override
  Future<void> onReady() async {
    setInitialLocalLanguage();
    super.onReady();
  }

  // Retrieves and Sets language based on device settings
  Future<void> setInitialLocalLanguage() async {
    final _currentLanguage = currentLanguageStore().value;
    if ((_currentLanguage == '') || (_currentLanguage == null)) {
      String _deviceLanguage = ui.window.locale.toString();
      _deviceLanguage =
          _deviceLanguage.substring(0, 2); //only get 1st 2 characters
      // print(ui.window.locale.toString());
      updateLanguage(_deviceLanguage);
    }
  }

// Gets current language stored
  RxString currentLanguageStore() {
    language.value = _data.store.read('language');
    return language;
  }

  // gets the language locale app is set to
  Locale getLocale() {
    final _currentLanguage = currentLanguageStore().value;
    if ((_currentLanguage == '') || (_currentLanguage == null)) {
      language.value = menuOptionsdefaultLanguage;
      updateLanguage(menuOptionsdefaultLanguage);
    }
    // gets the default language key (from the translation language system)
    Locale _updatedLocal = AppLocalizations.languages.keys.first;
    // looks for matching language key stored and sets to it
    AppLocalizations.languages.keys.forEach((locale) {
      if (locale.languageCode == currentLanguage) {
        _updatedLocal = locale;
      }
    });
    // print('getLocale: ' + _updatedLocal.toString());
    return _updatedLocal;
  }

// updates the language stored
  Future<void> updateLanguage(String value) async {
    language.value = value;
    await _data.store.write('language', value);
    Get.updateLocale(getLocale());
    update();
  }
}
