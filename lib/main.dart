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
      locale: const Locale('en', 'Us'),
      title: 'Vigor',
      home: const LoginScreen(),
    );
  }
}
