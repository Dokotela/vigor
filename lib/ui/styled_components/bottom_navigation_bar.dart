import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/views.dart';

BottomNavigationBar bottomAppBar = BottomNavigationBar(
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.arrow_back, color: Get.theme.colorScheme.onPrimary),
      label: 'Back',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Get.theme.colorScheme.onPrimary),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.exit_to_app, color: Get.theme.colorScheme.onPrimary),
      label: 'Logout',
    ),
  ],
  onTap: (index) => index == 0
      ? Get.back()
      : index == 1
          ? Get.offAll<Widget>(HomePage())
          : Get.offAll<Widget>(LoginPage()),
);
