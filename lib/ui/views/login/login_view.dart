import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

    /// ToDo: make localization work by country
    final _country = ui.window.locale.countryCode;

    return Scaffold(
      appBar: AppBar(title: Text(labels.app.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /// Widget that displays the flags country as a map of that country
              FlagWidget(_country),

              ///specific text with formatting for that country's app title
              SplashTitleWidget(_country),
              const SizedBox(height: 30.0),

              /// ToDo: make a real login
              LoginFieldWidget(
                  hint: labels.auth.userName,
                  obscure: false,
                  padding: _padding),
              const SizedBox(height: 15.0),
              LoginFieldWidget(
                  hint: labels.auth.password, obscure: true, padding: _padding),
              const SizedBox(height: 15.0),
              LoginButtonWidget(login: labels.auth.signIn, padding: _padding),
              ThinActionButton(
                  buttonText: labels.settings.title, onPressed: settingsDialog),
            ],
          ),
        ),
      ),
    );
  }
}
