import 'package:flutter/material.dart';
import '../core/app_localization/app_localization.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalization localization = AppLocalization.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(localization.translate(key: AppLocalizationKey.title))),
      body: Center(child: Text(localization.translate(key: AppLocalizationKey.message))),
    );
  }
}
