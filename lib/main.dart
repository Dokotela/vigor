import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/screens.dart';
import 'themes/theme.dart';
import 'utils/localization/localization.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeClass.light(),
      theme: ThemeClass.dark(),
      translations: MyTranslations(),
      locale: Locale(Platform.localeName.split('_')[0]),
      title: 'Vigor',
      home: const LoginScreen(),
    );
  }
}
