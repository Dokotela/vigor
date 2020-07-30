import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'localization/localizations.dart';
import 'screens/login/login.dart';
import 'shared/theme.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeClass.light(),
      theme: ThemeClass.dark(),
      supportedLocales: localeList(),
      localizationsDelegates: delegateList(),
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      title: 'Vigor',
      home: LoginScreen(),
    );
  }
}

List<Locale> localeList() => [
      Locale('en'), //english
      Locale('es'), //spanish
      Locale('zh'), //mandarin
      Locale('hi'), //hindi
      Locale('fr'), //french
      Locale('ar'), //arabic
      Locale('bn'), //bengali
      Locale('ru'), //russian
      Locale('pt'), //portuguese
      Locale('id'), //indonesian
      Locale('pa'), //punjabi
      Locale('mr'), //marathi
      Locale('th'), //thai
    ];

Iterable<LocalizationsDelegate<dynamic>> delegateList() => [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
    ];
