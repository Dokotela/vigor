import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/presentation/localization/localization.dart';

import 'screens/login/login.dart';
import 'shared/theme.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeClass.light(),
      theme: ThemeClass.dark(),
      translations: MyTranslations(),
      locale: const Locale('en', 'Us'),
      title: 'Vigor',
      home: const LoginScreen(),
    );
  }
}
