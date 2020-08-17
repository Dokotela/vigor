//ActionButton, returns FlatButton with image, text, and function to call, passed as arguments
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    this.fileName,
    this.buttonText,
    this.nextPage,
    this.getFunc,
  });

  final String fileName;
  final String buttonText;
  static const String imgDir = 'assets/img/';
  final Widget nextPage;
  final Function getFunc;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => nextPage == null ? getFunc() : getFunc(nextPage),
      child: Column(
        children: <Widget>[
          ClipRRect(
            child: Image.asset('$imgDir$fileName.png', height: 100, width: 100),
          ),
          Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
