import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

import 'api_keys.dart';

part 'localization.g.dart';

// spec: https://github.com/aloisdeniel/flutter_sheet_localization
// also: https://github.com/delay/flutter_starter

const version = 0; // <- See 1. to get DOCID and SHEETID
/// the `1` is the generated version. You must increment it each time you want
/// to regenerate a new version of the labels.

@SheetLocalization(ApiKeys.localeSpreadsheetId, ApiKeys.localeSheetId, version)
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.languages.containsKey(locale);
  @override
  Future<AppLocalizations> load(Locale locale) =>
      SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
