import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';

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
        icon: const Icon(Icons.home, color: Colors.white),
        onPressed: () => Get.offAll<Widget>(HomeScreen()),
      ),
      IconButton(
        icon: const Icon(Icons.exit_to_app, color: Colors.white),
        onPressed: () => Get.offAll<Widget>(const LoginScreen()),
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
        onPressed: () => Get.to<Widget>(const LoginScreen()),
      ),
    ],
  ),
);
