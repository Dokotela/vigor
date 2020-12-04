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
    return RaisedButton(
      color: Get.theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Get.width / 10)),
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
          horizontal: Get.width / 12, vertical: Get.width / 20),
      child: Text(
        buttonText,
        style: Get.theme.textTheme.headline5
            .copyWith(color: Get.theme.colorScheme.onPrimary),
      ),
    );
  }
}
