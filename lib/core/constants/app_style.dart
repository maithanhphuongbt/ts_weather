import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/extension/ts_text_style.dart';

import 'app_color.dart';

class AppStyle {
  // TEXT SIZE
  static const double textSize8 = 8.0;
  static const double textSize10 = 10.0;
  static const double textSize11 = 11.0;
  static const double textSize12 = 12.0;
  static const double textSize14 = 14.0;
  static const double textSize16 = 16.0;
  static const double textSize18 = 18.0;
  static const double textSize20 = 20.0;
  static const double textSize24 = 24.0;
  static const double textSize28 = 28.0;
  static const double textSize32 = 32.0;
  static const double textSize30 = 30.0;
  static const double textSize35 = 35.0;
  static const double textSize34 = 34.0;
  static const double textSize38 = 38.0;

  // SPACING
  static const double letterSpacing015 = 0.15;
  static const double letterSpacing04 = 0.4;

  // font
  static const String roboto = 'Roboto';
  static const String robotoMedium = 'Roboto-Medium';
  static const String robotoBold = 'Roboto-Bold';

  static tsTextStyle({required bool isDarkMode}) {
    return TSTextTheme(
      temperatureLarge: TextStyle(
        fontSize: 96.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w900, // Black
        color:  isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      cityName: TextStyle(
        fontSize: 36.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w100, // Thin
        color: isDarkMode ? appGrey1 : appBlue1,
        height: 1.4,
        letterSpacing: 0,
      ),
      weekday: TextStyle(
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal, // Regular
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      temperatureSmall: TextStyle(
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal, // Regular
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      errorMessage: TextStyle(
        fontSize: 54.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal, // Regular
        color: Colors.white,
        height: 1.2,
        letterSpacing: 0,
      ),
      retryButton: TextStyle(
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold, // Regular
        color: Colors.white,
        height: 1.2,
        letterSpacing: 0,
      ),
      titleAlertDialog: TextStyle(
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold, // Regular
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      contentAlertDialog: TextStyle(
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal, // Regular
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
    );
  }
}