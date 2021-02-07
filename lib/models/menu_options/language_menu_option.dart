import 'package:flutter/material.dart';

// spec: https://github.com/delay/flutter_starter
// Model class to hold menu option data (language and theme)
class LanguageMenuOption {
  LanguageMenuOption(
      {@required this.key,
      @required this.value,
      @required this.englishValue,
      this.icon});

  String key;
  String value;
  String englishValue;
  IconData icon;
}

const String defaultLanguage = 'en';

// spec: https://github.com/delay/flutter_starter
// List of languages that are supported.  Used in selector.
// Follow this plugin for translating a google sheet to languages
// https://github.com/aloisdeniel/flutter_sheet_localization
// Flutter App translations google sheet
// https://docs.google.com/spreadsheets/d/1oS7iJ6ocrZBA53SxRfKF0CG9HAaXeKtzvsTBhgG4Zzk/edit?usp=sharing

final List<LanguageMenuOption> fullLanguageOptions = <LanguageMenuOption>[
  LanguageMenuOption(key: 'en', englishValue: 'English', value: 'English'),
  LanguageMenuOption(key: 'es', englishValue: 'Spanish', value: 'Español'),
  LanguageMenuOption(key: 'ar', englishValue: 'Arabic', value: 'عربى'),
  LanguageMenuOption(key: 'bn', englishValue: 'Bengali', value: 'বাংলা'),
  LanguageMenuOption(key: 'my', englishValue: 'Burmese', value: 'မြန်မာ'),

  // spec: https://flutter.dev/docs/development/accessibility-and-localization/internationalization#advanced-locale-definition
  // For Chinese, multiple options exist based on languageCode, scriptCode, and countryCode
  LanguageMenuOption(key: 'zh', englishValue: 'Chinese', value: '中文'),
  // todo: re-implement Chinese locale variations
  // LanguageMenuOption(
  //   key: 'zh_Hans',
  //   englishValue: 'Chinese, generic simplified',
  //   value: '中国，通用简化',
  // ),
  // LanguageMenuOption(
  //   key: 'zh_Hant',
  //   englishValue: 'Chinese, generic traditional',
  //   value: '中國，通用的傳統',
  // ),
  // LanguageMenuOption(
  //   key: 'zh_Hans_CN',
  //   englishValue: 'Chinese (China)',
  //   value: '中文（中国）',
  // ),
  // LanguageMenuOption(
  //   key: 'zh_Hant_TW',
  //   englishValue: 'Chinese (Taiwan)',
  //   value: '中國（台灣）'
  // ),
  LanguageMenuOption(
      key: 'zh_Hant_HK', englishValue: 'Chinese (Hong Kong)', value: '中國（香港）'),
  LanguageMenuOption(key: 'fa', englishValue: 'Farsi', value: 'فارسی'),
  LanguageMenuOption(key: 'fr', englishValue: 'French', value: 'Français'),
  LanguageMenuOption(key: 'de', englishValue: 'German', value: 'Deutsche'),
  LanguageMenuOption(key: 'hi', englishValue: 'Hindi', value: 'हिंदी'),
  LanguageMenuOption(
      key: 'id', englishValue: 'Indonesian', value: 'bahasa Indonesia'),
  LanguageMenuOption(key: 'ja', englishValue: 'Japanese', value: '日本語'),
  LanguageMenuOption(key: 'km', englishValue: 'Khmer', value: 'ភាសាខ្មែរ'),
  LanguageMenuOption(key: 'ko', englishValue: 'Korean', value: '한국어'),
  LanguageMenuOption(key: 'lo', englishValue: 'Lao', value: 'ລາວ'),
  LanguageMenuOption(key: 'mr', englishValue: 'Marathi', value: 'मराठी'),
  LanguageMenuOption(key: 'ne', englishValue: 'Nepali', value: 'नेपाली'),
  LanguageMenuOption(key: 'pt', englishValue: 'Portuguese', value: 'Português'),
  LanguageMenuOption(key: 'pa', englishValue: 'Punjabi', value: 'ਪੰਜਾਬੀ ਦੇ'),
  LanguageMenuOption(key: 'ru', englishValue: 'Russian', value: 'русский'),
  // Somali not currently supported, per https://flutter.dev/tutorials/internationalization/
  // LanguageMenuOption(key: 'so', englishValue: 'Somali', value: 'Soomaali'),
  LanguageMenuOption(key: 'sw', englishValue: 'Swahili', value: 'Kiswahili'),
  LanguageMenuOption(key: 'tl', englishValue: 'Tagalog', value: 'Tagalog'),
  LanguageMenuOption(key: 'th', englishValue: 'Thai', value: 'ไทย'),
  LanguageMenuOption(key: 'uz', englishValue: 'Uzbek', value: "O'zbekiston"),
  LanguageMenuOption(
      key: 'vi', englishValue: 'Vietnamese', value: 'Tiếng Việt'),
];
