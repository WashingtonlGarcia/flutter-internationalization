part of 'app_localization.dart';

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['pt', 'en'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) async {
    final AppLocalization localizations = AppLocalization(locale: locale);
    await localizations._load();
    return localizations;
  }

  @override
  bool shouldReload(_) => false;
}
