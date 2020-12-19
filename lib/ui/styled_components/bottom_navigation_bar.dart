import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../localization.dart';
import '../views/views.dart';

BottomNavigationBar bottomAppBar(
    {Function backFunction, Function homeFunction}) {
  final labels = AppLocalizations.of(Get.context);
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.arrow_back, color: Get.theme.colorScheme.onPrimary),
        label: labels.actions.back,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Get.theme.colorScheme.onPrimary),
        label: labels.actions.home,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.exit_to_app, color: Get.theme.colorScheme.onPrimary),
        label: labels.actions.logout,
      ),
    ],
    onTap: (index) => index == 0
        ? backFunction == null
            ? Get.back()
            : backFunction()
        : index == 1
            ? homeFunction ?? Get.offAll<Widget>(HomePage())
            : Get.offAll<Widget>(LoginPage()),
  );
}
