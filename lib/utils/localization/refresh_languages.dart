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
    lang['Username'] = lang['Username'].substring(1, lang['Username'].length);
    final file =
        'const ${lang['iso369-1'].replaceAll('-', '')}Lang = ${json.encode(lang)};';
    await File("./lib/utils/localization/lang/${lang['iso369-1']}.dart")
        .writeAsString(file);
  }
}

String replace(String original, List<String> replacements) {
  String returnOriginal;
  for (final replacement in replacements) {
    returnOriginal = original.replaceAll(replacement, '');
  }
  return returnOriginal;
}
