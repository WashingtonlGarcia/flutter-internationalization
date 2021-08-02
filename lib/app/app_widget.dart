import 'package:flutter/material.dart';
import 'views/home_view.dart';
import 'core/app_localization/app_localization.dart';

class AppWidget extends MaterialApp {
  AppWidget()
      : super(
            supportedLocales: AppLocalization.supportedLocales,
            localizationsDelegates: AppLocalization.localizationsDelegate,
            localeResolutionCallback: AppLocalization.localeResolutionCallback,
            title: 'Flutter Localization',
            home: HomeView());
}
