import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:vigor/localization.dart';

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
    // ToDo: @dokotela, use this line to get your country code
    final _country = ui.window.locale.countryCode;
    print(_country);

    return Scaffold(
      appBar: AppBar(title: Text(labels.app.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlagWidget(_country),
              SplashTitleWidget(_country),
              const SizedBox(height: 30.0),
              LoginFieldWidget(
                  hint: labels.auth.userName,
                  obscure: false,
                  padding: _padding),
              const SizedBox(height: 15.0),
              LoginFieldWidget(
                  hint: labels.auth.password, obscure: true, padding: _padding),
              const SizedBox(height: 15.0),
              LoginButtonWidget(login: labels.auth.signIn, padding: _padding),
            ],
          ),
        ),
      ),
    );
  }
}
