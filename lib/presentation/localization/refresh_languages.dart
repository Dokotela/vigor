import 'dart:convert';
import 'dart:io';

import 'package:translator/translator.dart';

import 'available_languages.dart';
import 'phrases.dart';

Future<void> main() async {
  final translator = GoogleTranslator();
  final languageList = availableLanguages();

  var toReplace = replace(phrases.toString(), ['[', ']']);
  toReplace = toReplace.replaceAll(', ', '\n');

  for (final lang in languageList) {
    final newPhrases = //toReplace.toString();
        (await translator.translate(toReplace, to: lang['iso369-1']))
            .toString();
    final phraseList = newPhrases.toString().split('\n');
    for (var i = 0; i < phraseList.length; i++) {
      lang[phrases[i].replaceAll('**', '')] = phraseList[i];
    }
    await File("./lib/presentation/localization/lang/${lang['iso369-1']}.json")
        .writeAsString(json.encode(lang));
  }
}

String replace(String original, List<String> replacements) {
  String returnOriginal;
  for (final replacement in replacements) {
    returnOriginal = original.replaceAll(replacement, '');
  }
  return returnOriginal;
}
