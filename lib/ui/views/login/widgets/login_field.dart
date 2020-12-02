import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({
    @required this.hint,
    @required this.obscure,
    @required this.padding,
  });

  final String hint;
  final bool obscure;
  final EdgeInsets padding;

  @override
  Widget build(Object context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hint,
        hintStyle: Get.theme.textTheme.headline6,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}
