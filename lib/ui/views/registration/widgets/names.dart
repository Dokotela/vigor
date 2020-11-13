import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/localization.dart';

class NamesInputWidget extends StatelessWidget {
  const NamesInputWidget({
    @required this.familyNameError,
    @required this.givenNameError,
  });

  final String familyNameError;
  final String givenNameError;

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    final familyName = TextEditingController();
    final givenName = TextEditingController();

    return Container(
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: familyName,
            decoration: InputDecoration(
              hintText: labels.general.name.familyName,
              errorText: familyNameError.tr,
            ),
          ),
          TextFormField(
            controller: givenName,
            decoration: InputDecoration(
              hintText: labels.general.name.otherNames,
              errorText: givenNameError.tr,
            ),
          ),
        ],
      ),
    );
  }
}
