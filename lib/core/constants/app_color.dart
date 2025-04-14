import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ts_weather/core/extension/ts_color_style.dart';

const Color appWhite1 = Color(0xffF5F6F7);
const Color appWhite2 = Color(0xFFE0E0E0);

const Color appBlack1 = Color(0xFF2A2A2A);
const Color appBlack2 = Color(0xFF2A2A2A);
const Color appBlack3 = Color(0xFF2A2A2A);
const Color appBlack4 = Color(0xFF121212);
const Color appBlack5 = Color(0xFF0A0A0A);

const Color appBlue1 = Color(0xFF556799);

const Color appGrey1 = Color(0xFF90A4AE);
const Color appGrey2 = Color(0xFF4A4A4A);
const Color appGrey3 = Color(0xFFF5F5F5);

const Color appRed1 = Color(0xFFE85959);

class AppColor {

  static tsColor({required bool isDarkMode}) {
	return TSColorTheme(
	  currentWeatherBackground: isDarkMode ? appBlack5 : appGrey3,
	);
  }
}