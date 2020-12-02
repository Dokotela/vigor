import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/settings/settings_dialog.dart';
import '../views/views.dart';

BottomAppBar bottomAppBar = BottomAppBar(
  color: Colors.blue[900],
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Get.back(),
      ),
      IconButton(
        icon: const Icon(Icons.settings, color: Colors.white),
        onPressed: () => settingsDialog(),
      ),
      IconButton(
        icon: const Icon(Icons.home, color: Colors.white),
        onPressed: () => Get.offAll<Widget>(HomePage()),
      ),
      IconButton(
        icon: const Icon(Icons.exit_to_app, color: Colors.white),
        onPressed: () => Get.offAll<Widget>(LoginView()),
      ),
    ],
  ),
);

BottomAppBar homeBottomAppBar = BottomAppBar(
  color: Colors.blue[900],
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: const Icon(Icons.exit_to_app, color: Colors.white),
        onPressed: () => Get.to<Widget>(LoginView()),
      ),
    ],
  ),
);
