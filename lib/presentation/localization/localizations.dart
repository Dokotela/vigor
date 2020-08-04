import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    final jsonString = await rootBundle.loadString(
        'lib/presentation/localization/lang/${locale.languageCode}.json');
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;

    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));

    return true;
  }

  String translate(String key) => _localizedStrings[key];
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en', //english
        'es', //spanish
        'zh', //mandarin
        'hi', //hindi
        'fr', //french
        'ar', //arabic
        'bn', //bengali
        'ru', //russian
        'pt', //portuguese
        'id', //indonesian
        'pa', //punjabi
        'mr', //marathi
        'th', //thai
      ].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
