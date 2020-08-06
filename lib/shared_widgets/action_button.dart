//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({this.fileName, this.buttonText, this.nextPage});

  final String fileName;
  final String buttonText;
  static const String imgDir = 'lib/presentation/img/';
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => Get.to<Widget>(nextPage),
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
