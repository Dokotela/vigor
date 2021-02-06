import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/data/menu_option.dart';
import '../../ui/localization.dart';
import 'settings_controller.dart';

/// this was taken directly from John's repo: https://github.com/FireJuun/prapare
/// specifically, https://github.com/FireJuun/prapare/blob/main/lib/ui/views/settings/settings_dialog.dart

void settingsDialog() => Get.dialog(_SettingsDialogContent());

class _SettingsDialogContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    //todo: extract into controller
    final List<MenuOption> themeOptions = [
      MenuOption(
        key: ThemeMode.light,
        englishValue: 'light',
        value: labels.settings.light,
        icon: Icons.brightness_low,
      ),
      MenuOption(
        key: ThemeMode.dark,
        englishValue: 'dark',
        value: labels.settings.dark,
        icon: Icons.brightness_3,
      ),
      // MenuOption(
      //   key: ThemeMode.system,
      //   englishValue: 'system',
      //   value: labels.settings.system,
      //   icon: Icons.brightness_4,
      // ),
    ];

    final TextTheme textTheme = context.textTheme;
    final SettingsController controller = Get.find();
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
        child: Column(
          children: [
            Center(
                child: Text(labels.app.settings, style: textTheme.headline5)),
            Expanded(
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 24),

                  // *** CHOOSE THEME ***
                  Center(
                      child: Text(labels.app.chooseTheme,
                          style: textTheme.bodyText1)),
                  ...themeOptions.map(
                    (e) => Obx(
                      () => RadioListTile(
                        title: Text(e.value, style: textTheme.bodyText1),
                        subtitle: (controller.currentLanguage == 'en')
                            ? null
                            : Text(e.englishValue, style: textTheme.bodyText2),
                        value: e.key,
                        groupValue: controller.themeMode,
                        onChanged: (newValue) =>
                            controller.setThemeMode(newValue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // *** CHOOSE LANGUAGE ***
                  Center(
                      child: Text(labels.app.chooseLanguage,
                          style: textTheme.bodyText1)),
                  ...controller.languageOptions.map(
                    (e) => RadioListTile(
                      title: Text(e.value, style: textTheme.bodyText1),
                      subtitle:
                          Text(e.englishValue, style: textTheme.bodyText2),
                      value: e.key,
                      groupValue: controller.currentLanguage,
                      onChanged: (value) => controller.updateLanguage(value),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () => Get.back(),
                child: Text(labels.actions.ok, style: textTheme.headline6))
          ],
        ),
      ),
    );
  }
}
