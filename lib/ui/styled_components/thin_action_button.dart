import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/theme_controller.dart';
import 'package:vigor/ui/settings/themes.dart';

class ThinActionButton extends StatelessWidget {
  const ThinActionButton({
    @required this.buttonText,
    this.onPressed,
  });

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = Get.find<ThemeController>().lightTheme;
    // .getAppThemeFromBrightness(context.theme.brightness);
    return ButtonTheme.fromButtonThemeData(
      data: Get.theme.buttonTheme.copyWith(minWidth: Get.width / 2),
      child: RaisedButton(
        color: appTheme.bg1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: Text(
          buttonText,
          style: Get.theme.textTheme.headline6,
        ),
      ),
    );
  }
}
