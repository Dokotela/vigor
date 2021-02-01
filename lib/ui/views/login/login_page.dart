import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../localization.dart';
import '../../../routes/routes.dart';
import '../../../ui/styled_components/styled_components.dart';
import 'flag.dart';
import 'splash_title.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations_Labels labels = AppLocalizations.of(context);
    final _userName = TextEditingController();
    final _password = TextEditingController();
    final _sizedBox05 = SizedBox(height: Get.height * .05);
    final _sizedBox02 = SizedBox(height: Get.height * .02);

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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _sizedBox05,

              /// Widget that displays the flags country as a map of that country
              FlagWidget(_country),
              _sizedBox02,

              ///specific text with formatting for that country's app title
              SplashTitleWidget(_country),

              _sizedBox05,

              /// ToDo: make a real login
              Container(
                width: Get.width * .7,
                child: TextField(
                  style: Get.theme.textTheme.headline6,
                  obscureText: false,
                  controller: _userName,
                  decoration: InputDecoration(
                    labelText: labels.auth.userName,
                    labelStyle: Get.theme.textTheme.headline6,
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Get.width / 20)),
                  ),
                ),
              ),

              _sizedBox02,

              Container(
                width: Get.width * .7,
                child: TextField(
                  style: Get.theme.textTheme.headline6,
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: labels.auth.password,
                    labelStyle: Get.theme.textTheme.headline6,
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Get.width / 20)),
                  ),
                ),
              ),

              _sizedBox05,

              ActionButton(
                buttonText: labels.auth.login,
                onPressed: () => Get.toNamed(AppRoutes.HOME),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
