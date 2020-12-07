import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/commands/settings_controller.dart';
import 'localization.dart';
import 'routes/routes.dart';
import 'ui/styled_components/styled_loading.dart';
import 'ui/views/views.dart';

/// sources mostly from https://github.com/FireJuun/prapare/blob/main/lib/main.dart
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initServices();
  runApp(MyApp());
}

// Theme uses GetxService so that it isn't closed during app lifecycle
Future<void> _initServices() async {
  await GetStorage.init();
  Get.put<SettingsController>(SettingsController());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (localeService) {
        return StyledLoading(
          child: GetMaterialApp(
            // *** LOCALES ***
            locale: localeService.getLocale, // <- Current locale
            localizationsDelegates: const [
              AppLocalizationsDelegate(), // <- Your custom delegate
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.languages.keys
                .toList(), // <- Supported locales

            // *** THEMES ***
            theme: SettingsController.to.lightTheme,
            darkTheme: SettingsController.to.darkTheme,
            themeMode: SettingsController.to.themeMode,

            // *** ROUTES ***
            // initialRoute: "/",
            home: LoginView(),
            getPages: appPages,
            debugShowCheckedModeBanner: false,
            //defaultTransition: Transition.fade,
          ),
        );
      },
    );
  }
}
