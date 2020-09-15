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
    return ButtonTheme.fromButtonThemeData(
      data: Get.theme.buttonTheme.copyWith(minWidth: Get.width / 2),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        child: Text(
          buttonText,
          style: Get.theme.textTheme.headline4,
        ),
      ),
    );
  }
}
