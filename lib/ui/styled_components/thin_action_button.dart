import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:vigor/controllers/theme_controller.dart';

class ThinActionButton extends StatelessWidget {
  const ThinActionButton({
    @required this.buttonText,
    this.onPressed,
    this.width,
  });

  final String buttonText;
  final Function onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: width ?? Get.width * .7,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Get.theme.colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(Get.width / 20)),
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(
            horizontal: Get.width / 12, vertical: Get.width / 30),
        child: Text(
          buttonText,
          style: Get.theme.textTheme.headline6
              .copyWith(color: Get.theme.colorScheme.onPrimary),
        ),
      ),
    );
  }
}
