import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ts_weather/core/constants/app_locale.dart';

extension DateTimeExtension on DateTime {
  String formatEEE(Locale locale) {
    final languageCode =
        locale == AppLocale.englishLocale
            ? AppLocale.englishLocale.languageCode
            : AppLocale.vietnameseLocale.languageCode;
    return DateFormat('EEEE', languageCode).format(this);
  }
}
