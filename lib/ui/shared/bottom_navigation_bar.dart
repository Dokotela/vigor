import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'shared.dart';

BottomAppBar bottomAppBar = BottomAppBar(
  color: Colors.blue[900],
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Get.back(),
      ),
      IconButton(
        icon: Icon(Icons.home, color: Colors.white),
        onPressed: () => Get.to(HomeScreen()),
      ),
      IconButton(
        icon: Icon(Icons.exit_to_app, color: Colors.white),
        onPressed: () => Get.to(LoginScreen()),
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
        icon: Icon(Icons.exit_to_app, color: Colors.white),
        onPressed: () => Get.to(LoginScreen()),
      ),
    ],
  ),
);
