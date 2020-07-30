import 'dart:convert';
import 'dart:io';

import 'package:translator/translator.dart';

import 'available_languages.dart';
import 'phrases.dart';

void main() async {
  final translator = GoogleTranslator();
  var languageList = availableLanguages();

  var toReplace = replace(phrases.toString(), ['[', ']']);
  toReplace = toReplace.replaceAll(', ', '\n');

  for (var lang in languageList) {
    String newPhrases = //toReplace.toString();
        await translator.translate(toReplace, to: lang['iso369-1']);
    List<String> phraseList = newPhrases.toString().split('\n');
    for (var i = 0; i < phraseList.length; i++) {
      lang[phrases[i].replaceAll('**', '')] = phraseList[i];
    }
    await File("./lib/presentation/localization/lang/${lang['iso369-1']}.json")
        .writeAsString(json.encode(lang));
  }
}

String replace(String original, List<String> replacements) {
  for (var replacement in replacements) {
    original = original.replaceAll(replacement, '');
  }
  return original;
}
