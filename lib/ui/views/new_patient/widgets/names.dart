import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

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
    final labels = AppLocalizations.of(context);

    return Container(
      child: Column(
        children: <Widget>[
          /// error is blank at first, only is shown after the registration
          /// button is pushed, names must be at least 2 characters
          TextFormField(
            controller: familyName,
            decoration: InputDecoration(
              labelText: labels.name.familyName,
              labelStyle: Get.textTheme.bodyText1,
              errorText: familyNameError == '' ? null : familyNameError,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Get.theme.colorScheme.onPrimary),
              ),
            ),
            style: Get.textTheme.headline6,
          ),

          /// error is blank at first, only is shown after the registration
          /// button is pushed, names must be at least 2 characters
          TextFormField(
            controller: givenName,
            decoration: InputDecoration(
              labelText: labels.name.givenNames,
              labelStyle: Get.textTheme.bodyText1,
              errorText: givenNameError == '' ? null : givenNameError,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Get.theme.colorScheme.onPrimary),
              ),
            ),
            style: Get.textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
