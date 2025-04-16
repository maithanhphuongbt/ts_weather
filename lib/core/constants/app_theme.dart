import 'package:flutter/material.dart';
import 'package:ts_weather/core/constants/app_style.dart';
import 'package:ts_weather/core/constants/app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: appWhite1,
      extensions: [AppStyle.tsTextStyle(isDarkMode: false), AppColor.tsColor(isDarkMode: false)],
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: appBlack4,
      extensions: [AppStyle.tsTextStyle(isDarkMode: true), AppColor.tsColor(isDarkMode: true)],
    );
  }
}
