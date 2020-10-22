import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:vigor/localization/localization.dart';

import 'login/login.dart';
import 'theme/theme.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeClass.light(),
      translations: MyTranslations(),
      locale: Locale(Platform.localeName.split('_')[0]),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
      ],
      title: 'Vigor',
      home: LoginScreen(),
    );
  }
}
