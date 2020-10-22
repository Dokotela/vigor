import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/flag.dart';
import 'widgets/login_button.dart';
import 'widgets/login_field.dart';
import 'widgets/splash_title.dart';

class LoginScreen extends StatelessWidget {
  static const _padding = EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0);

// const String country = 'botswana';
  // static const String _country = 'dominican_republic';
  static const String _country = 'usa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title'.tr)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const FlagWidget(_country),
              const SplashTitleWidget(_country),
              const SizedBox(height: 30.0),
              LoginFieldWidget(
                  hint: 'Username'.tr, obscure: false, padding: _padding),
              const SizedBox(height: 15.0),
              LoginFieldWidget(
                  hint: 'Password'.tr, obscure: true, padding: _padding),
              const SizedBox(height: 15.0),
              LoginButtonWidget(login: 'Login'.tr, padding: _padding),
            ],
          ),
        ),
      ),
    );
  }
}
