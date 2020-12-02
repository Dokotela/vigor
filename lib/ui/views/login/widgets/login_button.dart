import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/theme_controller.dart';

import '../../../../routes/routes.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    @required this.login,
    @required this.padding,
  });

  final String login;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final appTheme =
        Get.put(ThemeController()).getAppTheme(context.theme.brightness);
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(64.0),
      color: appTheme.bg2,
      child: MaterialButton(
        minWidth: Get.width,
        padding: padding,
        onPressed: () => Get.toNamed(AppRoutes.HOME),
        child: Text(login, textAlign: TextAlign.center),
      ),
    );
  }
}
