import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/app_pages.dart';
import 'package:vigor/ui/settings/settings_controller.dart';
import 'package:vigor/ui/settings/settings_dialog.dart';
import 'package:vigor/ui/styled_components/thin_action_button.dart';

import '../../../localization.dart';
import 'widgets/flag.dart';
import 'widgets/login_button.dart';
import 'widgets/login_field.dart';
import 'widgets/splash_title.dart';

class LoginView extends StatelessWidget {
  static const _padding = EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations_Labels labels = AppLocalizations.of(context);
    final user = TextEditingController();
    final password = TextEditingController();
    final appTheme = Get.put(SettingsController()).appTheme;

    /// ToDo: make localization work by country
    final _country = ui.window.locale.countryCode;

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(labels.app.title)),
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// Widget that displays the flags country as a map of that country
            FlagWidget(_country),

            ///specific text with formatting for that country's app title
            SplashTitleWidget(_country),
            const SizedBox(height: 30.0),

            /// ToDo: make a real login
            TextField(
              controller: user,
              obscureText: false,
              decoration: InputDecoration(
                contentPadding: _padding,
                hintText: labels.auth.userName,
                hintStyle: Get.theme.textTheme.headline6,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            // LoginFieldWidget(
            //     hint: labels.auth.userName, obscure: false, padding: _padding),
            const SizedBox(height: 15.0),
            // LoginFieldWidget(
            //     hint: labels.auth.password, obscure: true, padding: _padding),
            TextField(
              controller: password,
              obscureText: false,
              decoration: InputDecoration(
                contentPadding: _padding,
                hintText: labels.auth.password,
                hintStyle: Get.theme.textTheme.headline6,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            const SizedBox(height: 15.0),
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(64.0),
              color: appTheme.bg2,
              child: MaterialButton(
                minWidth: Get.width,
                padding: _padding,
                onPressed: () {
                  print(user.text);
                  print(password.text);
                  if (user.text == 'enfermera' && password.text == '12345') {
                    Get.toNamed(AppRoutes.HOME);
                  } else {
                    Get.snackbar(
                        'Error', 'Either username or password incorrect',
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
                child: Text(labels.auth.signIn, textAlign: TextAlign.center),
              ),
            ),
            // LoginButtonWidget(login: labels.auth.signIn, padding: _padding),
            ThinActionButton(
                buttonText: labels.settings.title, onPressed: settingsDialog),
          ],
        ),
      ),
    );
  }
}
