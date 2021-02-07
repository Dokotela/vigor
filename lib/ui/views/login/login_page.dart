import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../controllers/controllers.dart';
import '../../../routes/routes.dart';
import '../../../ui/styled_components/styled_components.dart';
import '../../localization.dart';
import 'flag.dart';
import 'splash_title.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(context) {
    final AppLocalizations_Labels labels = AppLocalizations.of(context);
    final _userName = TextEditingController();
    final _password = TextEditingController();
    final screenSize = Get.put(ResponsiveCommand());
    SizedBox _sizedBox(double size) =>
        SizedBox(height: screenSize.height * size);

    /// ToDo: make localization work by country
    final _country = ui.window.locale.countryCode;

    return SafeArea(
      minimum: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                width: screenSize.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _sizedBox(.05),

                    /// Widget that displays the flags country as a map of that country
                    FlagWidget(_country),
                    _sizedBox(.02),

                    ///specific text with formatting for that country's app title
                    SplashTitleWidget(_country),

                    _sizedBox(.05),

                    /// ToDo: make a real login
                    Container(
                      width: screenSize.width * .7,
                      child: TextField(
                        style: Get.theme.textTheme.headline6
                            .copyWith(fontSize: screenSize.width * .05),
                        obscureText: false,
                        controller: _userName,
                        decoration: InputDecoration(
                          labelText: labels.auth.userName,
                          labelStyle: Get.theme.textTheme.headline6
                              .copyWith(fontSize: screenSize.width * .05),
                          prefixIcon: Icon(
                            Icons.person,
                            size: screenSize.width * .05,
                          ),
                          contentPadding:
                              screenSize.symmetricPadding(sizingInformation),
                          border: OutlineInputBorder(
                              borderRadius: screenSize
                                  .circularBorderRadius(sizingInformation)),
                        ),
                      ),
                    ),

                    _sizedBox(.02),

                    Container(
                      width: screenSize.width * .7,
                      child: TextField(
                        style: Get.theme.textTheme.headline6
                            .copyWith(fontSize: screenSize.width * .05),
                        obscureText: true,
                        controller: _password,
                        decoration: InputDecoration(
                          labelText: labels.auth.password,
                          labelStyle: Get.theme.textTheme.headline6
                              .copyWith(fontSize: screenSize.width * .05),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: screenSize.width * .05,
                          ),
                          contentPadding:
                              screenSize.symmetricPadding(sizingInformation),
                          border: OutlineInputBorder(
                              borderRadius: screenSize
                                  .circularBorderRadius(sizingInformation)),
                        ),
                      ),
                    ),

                    _sizedBox(.05),

                    ActionButton(
                      buttonText: labels.auth.login,
                      onPressed: () => Get.toNamed(AppRoutes.HOME),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
