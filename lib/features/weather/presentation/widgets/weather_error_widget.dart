import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/constants/app_color.dart';
import 'package:ts_weather/core/extension/ts_text_style_ext.dart';
import 'package:ts_weather/generated/locale_keys.g.dart';

class WeatherErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const WeatherErrorWidget({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      color: appRed1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.weather_message_error.tr(),
            style: context.tsTextStyle.errorMessage,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 44.sp),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: appGrey2),
            onPressed: onRetry,
            child: Text(LocaleKeys.weather_button_retry.tr(), style: context.tsTextStyle.retryButton),
          ),
        ],
      ),
    );
  }
}
