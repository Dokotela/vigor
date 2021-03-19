//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../controllers/controllers.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final Future<dynamic>? Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final screenSize = Get.put(ResponsiveCommand())!;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ButtonTheme(
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Get.theme!.textTheme.headline6!.copyWith(
                color: Get.theme!.colorScheme.onPrimary,
                fontSize: screenSize.width * .05),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(sizingInformation.screenSize.width * .7, 1),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Get.theme!.colorScheme.onPrimary),
              borderRadius: screenSize.circularBorderRadius(sizingInformation),
            ),
            padding: screenSize.symmetricPadding(sizingInformation),
          ),
        ),
      ),
    );
  }
}
