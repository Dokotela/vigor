import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../settings_dialog.dart';

class VigorAppBar extends AppBar {
  VigorAppBar({required String title, Widget? leading, List<Widget>? actions})
      : super(
          title: Text(title,
              style: Get.theme!.textTheme.headline5!
                  .copyWith(fontSize: Get.width * .07)),
          elevation: 1,
          leading: leading,
          automaticallyImplyLeading: false,
          actions: _actions(actions: actions),
        );
}

List<Widget> _actions({List<Widget>? actions}) {
  actions = actions == null || actions.isEmpty ? <Widget>[] : actions;
  actions.add(Padding(
    padding: EdgeInsets.only(right: Get.width * .03),
    child: IconButton(
      icon: Icon(Icons.settings, size: Get.width * .06),
      onPressed: () => settingsDialog(),
    ),
  ));
  return actions;
}
