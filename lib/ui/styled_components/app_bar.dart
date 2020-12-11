import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/commands/settings_dialog.dart';

class VigorAppBar extends AppBar {
  VigorAppBar({@required String title, Widget leading})
      : super(
            title: Text(title, style: Get.theme.textTheme.headline5),
            elevation: 1,
            leading: leading,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () => settingsDialog(),
              ),
            ]);
}
