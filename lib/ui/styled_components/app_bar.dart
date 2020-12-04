import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VigorAppBar extends AppBar {
  VigorAppBar({@required String title})
      : super(
          title: Text(
            title,
            style: Get.textTheme.headline4
                .copyWith(color: Get.theme.colorScheme.onPrimary),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
        );
}
