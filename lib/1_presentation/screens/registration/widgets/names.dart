import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamesInputWidget extends StatelessWidget {
  const NamesInputWidget({
    @required this.familyName,
    @required this.familyNameError,
  });
  final TextEditingController familyName;
  final String familyNameError;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[],
      ),
    );
  }
}
