import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/settings_dialog.dart';

class VigorAppBar extends AppBar {
  VigorAppBar({@required String title})
      : super(
            title: Text(
              title,
              style:
                  Get.theme.textTheme.headline4.copyWith(color: Colors.white),
            ),
            elevation: 5,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.white),
                onPressed: () => settingsDialog(),
              ),
            ]);
}
