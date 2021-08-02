import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

part 'app_localization_delegate.dart';

part 'app_localization_key.dart';

class AppLocalization {
  final Locale locale;

  AppLocalization({@required this.locale});

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  static Iterable<LocalizationsDelegate> get localizationsDelegate =>
      [_AppLocalizationsDelegate(), GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate];

  static List<Locale> get supportedLocales => [Locale('pt', 'BR'), Locale('en', 'US')];

  static Locale localeResolutionCallback(Locale locale, Iterable<Locale> supportedLocales) {
    for (final suportedLocale in supportedLocales) {
      if (suportedLocale.languageCode == locale.languageCode) {
        return suportedLocale;
      }
    }
    return supportedLocales.first;
  }

  Map<String, String> _localizedStrings;

  Future<void> _load() async {
    final String jsonString = await rootBundle.loadString('assets/languages/${locale.languageCode}.json');

    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate({@required AppLocalizationKey key}) => _localizedStrings[key.value];
}
