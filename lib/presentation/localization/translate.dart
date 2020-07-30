import 'package:flutter/material.dart';

import 'localizations.dart';

Text translateText(BuildContext context, String word) =>
    Text(AppLocalizations.of(context).translate(word));

String translateString(BuildContext context, String word) =>
    AppLocalizations.of(context).translate(word);
