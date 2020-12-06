import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:vigor/controllers/theme_controller.dart';

class ThinActionButton extends StatelessWidget {
  const ThinActionButton({
    @required this.buttonText,
    this.onPressed,
  });

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: Get.theme.buttonTheme.copyWith(minWidth: Get.width / 2),
      child: RaisedButton(
        color: Get.theme.colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: Text(
          buttonText,
          style: Get.theme.textTheme.headline6.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
