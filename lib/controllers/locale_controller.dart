/// spec: https://github.com/delay/flutter_starter

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../_internal/constants/languages.dart';
import '../localization.dart';
import '../models/data/menu_option.dart';

/// As usual, mostly stolen from John.
/// https://github.com/FireJuun/prapare/blob/main/lib/controllers/locale_controller.dart

class LocaleController extends GetxController {
  static LocaleController get to => Get.find();

  /// PROPERTIES
  final language = ''.obs;
  final store = GetStorage();
  final List<MenuOption> languageOptions = availableLanguages;

  /// INIT
  @override
  Future onInit() async {
    setInitialLocalLanguage();
    super.onInit();
  }

  /// GETTER Functions
  String get currentLanguage => language.value;
  // Gets current language stored
  String currentLanguageStore() => store.read('language') ?? '';

  // gets the language locale app is set to
  Locale get getLocale {
    if (currentLanguageStore().isEmpty) {
      language.value = defaultLanguage;
      updateLanguage(defaultLanguage);
    }
    // gets the default language key (from the translation language system)
    // looks for matching language key stored and sets to it

    return AppLocalizations.languages.keys.firstWhere(
        (locale) => locale.languageCode == currentLanguage,
        orElse: () => AppLocalizations.languages.keys.first);
  }

  /// SETTER Functions
  // Retrieves and Sets language based on device settings
  void setInitialLocalLanguage() {
    if (currentLanguageStore().isEmpty) {
      String _deviceLanguage = ui.window.locale.toString();
      print(ui.window.locale.toString());
      //only get 1st 2 characters
      updateLanguage(_deviceLanguage.substring(0, 2));
    }
  }

  // updates the language stored
  Future updateLanguage(String value) async {
    language.value = value;
    await store.write('language', value);
    Get.updateLocale(getLocale);
    update();
  }
}
