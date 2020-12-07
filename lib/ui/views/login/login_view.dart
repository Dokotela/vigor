import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/commands/settings_dialog.dart';
import '../../../localization.dart';
import '../../../routes/routes.dart';
import '../../../ui/styled_components/app_bar.dart';
import 'widgets/flag.dart';
import 'widgets/splash_title.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations_Labels labels = AppLocalizations.of(context);
    final _sizedBox = SizedBox(height: Get.height * .05);
    final _padding = EdgeInsets.fromLTRB(
        Get.width / 20, Get.width / 30, Get.width / 20, Get.width / 30);

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
        appBar: VigorAppBar(title: labels.app.title),
        body: ListView(
          children: <Widget>[
            /// Widget that displays the flags country as a map of that country
            FlagWidget(_country),

            ///specific text with formatting for that country's app title
            SplashTitleWidget(_country),

            /// ToDo: make a real login
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: labels.auth.userName,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Get.width / 10)),
              ),
            ),

            _sizedBox,

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: labels.auth.password,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Get.width / 10)),
              ),
            ),

            _sizedBox,

            RaisedButton(
              padding: _padding,
              color: Get.theme.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Get.width / 10)),
              onPressed: () => Get.toNamed(AppRoutes.HOME),
              child: Text(
                labels.auth.signIn,
                style: Get.theme.textTheme.headline6
                    .copyWith(color: Get.theme.colorScheme.onPrimary),
              ),
            ),

            _sizedBox,

            RaisedButton(
              padding: _padding,
              color: Get.theme.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Get.width / 10)),
              onPressed: settingsDialog,
              child: Text(
                labels.settings.title,
                style: Get.theme.textTheme.headline6
                    .copyWith(color: Get.theme.colorScheme.onPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
