import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/commands/settings_controller.dart';

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
              hintText: labels.general.name.familyName,
              errorText: familyNameError.tr,
            ),
            style: Get.textTheme.headline6,
          ),

          /// error is blank at first, only is shown after the registration
          /// button is pushed, names must be at least 2 characters
          TextFormField(
            controller: givenName,
            decoration: InputDecoration(
              hintText: labels.general.name.givenNames,
              errorText: givenNameError.tr,
            ),
            style: Get.textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
