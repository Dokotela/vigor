//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    @required this.buttonText,
    this.onPressed,
  });

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: Get.width * .7,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Get.theme.colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(Get.width / 20)),
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(
            horizontal: Get.width / 12, vertical: Get.width / 20),
        child: Text(
          buttonText,
          style: Get.theme.textTheme.headline6
              .copyWith(color: Get.theme.colorScheme.onPrimary),
        ),
      ),
    );
  }
}
