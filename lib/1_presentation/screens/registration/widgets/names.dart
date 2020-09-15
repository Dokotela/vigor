import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamesInputWidget extends StatelessWidget {
  const NamesInputWidget({
    @required this.familyName,
    @required this.givenName,
    @required this.familyNameError,
    @required this.givenNameError,
  });
  final TextEditingController familyName;
  final TextEditingController givenName;
  final String familyNameError;
  final String givenNameError;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: familyName,
            decoration: InputDecoration(
              hintText: 'Family Name'.tr,
              errorText: familyNameError.tr,
            ),
          ),
          TextFormField(
            controller: givenName,
            decoration: InputDecoration(
              hintText: 'Other Names'.tr,
              errorText: givenNameError.tr,
            ),
          ),
        ],
      ),
    );
  }
}
