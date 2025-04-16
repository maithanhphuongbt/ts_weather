import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ts_weather/core/constants/app_locale.dart';
import 'package:ts_weather/core/di/di.dart';
import 'package:ts_weather/ts_weather_app.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();
      final sharedPreferences = await SharedPreferences.getInstance();

      runApp(
        EasyLocalization(
          supportedLocales: AppLocale.supportedLocales,
          path: AppLocale.translationPath,
          fallbackLocale: AppLocale.englishLocale,
          startLocale: AppLocale.englishLocale,
          child: ProviderScope(
            overrides: [sharedPreferencesProvider.overrideWithValue(sharedPreferences)],
            child: TsWeatherApp(),
          ),
        ),
      );
    },
    (error, stack) {
      _handleGlobalError(error, stack);
    },
  );
}

Future<void> _handleGlobalError(dynamic error, StackTrace? stackTrace) async {
  if (kDebugMode) {
    debugPrint('===== CAUGHT EXCEPTION =====');
    debugPrint(error);
    debugPrint(stackTrace?.toString());
  }
}
