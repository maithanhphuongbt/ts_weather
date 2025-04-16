import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/extension/ts_text_style_ext.dart';

import 'app_color.dart';

class AppStyle {
  static const String robotoBlack = 'RobotoBlack';
  static const String robotoMedium = 'RobotoMedium';
  static const String robotoBold = 'RobotoBold';
  static const String robotoThin = 'RobotoThin';
  static const String robotoRegular = 'RobotoRegular';

  static tsTextStyle({required bool isDarkMode}) {
    return TSTextTheme(
      temperatureLarge: TextStyle(
        fontSize: 96.sp,
        fontFamily: robotoBlack,
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      cityName: TextStyle(
        fontSize: 36.sp,
        fontFamily: robotoThin,
        color: isDarkMode ? appGrey1 : appBlue1,
        height: 1.4,
        letterSpacing: 0,
      ),
      weekday: TextStyle(
        fontSize: 16.sp,
        fontFamily: robotoRegular,
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      temperatureSmall: TextStyle(
        fontSize: 16.sp,
        fontFamily: robotoRegular,
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      errorMessage: TextStyle(
        fontSize: 54.sp,
        fontFamily: robotoRegular,
        color: Colors.white,
        height: 1.2,
        letterSpacing: 0,
      ),
      retryButton: TextStyle(
        fontSize: 14.sp,
        fontFamily: robotoBold,
        color: Colors.white,
        height: 1.2,
        letterSpacing: 0,
      ),
      titleAlertDialog: TextStyle(
        fontSize: 14.sp,
        fontFamily: robotoBold,
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
      contentAlertDialog: TextStyle(
        fontSize: 14.sp,
        fontFamily: robotoRegular,
        color: isDarkMode ? appWhite2 : appBlack1,
        height: 1.2,
        letterSpacing: 0,
      ),
    );
  }
}
