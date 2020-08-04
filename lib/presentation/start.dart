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
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      title: 'Vigor',
      home: const LoginScreen(),
    );
  }
}

List<Locale> localeList() => [
      const Locale('en'), //english
      const Locale('es'), //spanish
      const Locale('zh'), //mandarin
      const Locale('hi'), //hindi
      const Locale('fr'), //french
      const Locale('ar'), //arabic
      const Locale('bn'), //bengali
      const Locale('ru'), //russian
      const Locale('pt'), //portuguese
      const Locale('id'), //indonesian
      const Locale('pa'), //punjabi
      const Locale('mr'), //marathi
      const Locale('th'), //thai
    ];

Iterable<LocalizationsDelegate<dynamic>> delegateList() => [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
    ];
