//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpepu/presentation/shared/shared.dart';

class ActionButton extends StatelessWidget {
  final String fileName;
  final String buttonText;
  // final Function func;
  final String imgDir = 'lib/presentation/img/';

  ActionButton(this.fileName, this.buttonText);

  @override
  Widget build(context) {
    return FlatButton(
      onPressed: () => Get.to(HomeScreen()),
      child: Column(
        children: <Widget>[
          ClipRRect(
            child: Image.asset('$imgDir$fileName.png', height: 100, width: 100),
          ),
          Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
