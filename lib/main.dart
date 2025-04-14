import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ts_weather/core/services/connection_service.dart';
import 'package:ts_weather/ts_weather_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  ConnectionService().initialize();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(EasyLocalization(
    supportedLocales: [Locale('en'), Locale('vi')],
    path: 'assets/translations',
    fallbackLocale: Locale('en'),
    child: TsWeatherApp(),
  ));
}
