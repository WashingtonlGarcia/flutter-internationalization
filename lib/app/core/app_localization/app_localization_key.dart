part of 'app_localization.dart';

enum AppLocalizationKey { title, message }

extension LocalzaiontionKeyExtension on AppLocalizationKey {
  String get value {
    switch (this) {
      case AppLocalizationKey.title:
        return 'title';
      case AppLocalizationKey.message:
        return 'message';
      default:
        throw UnimplementedError();
    }
  }
}
