import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/extension/ts_text_style_ext.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ts_weather/generated/locale_keys.g.dart';

class NoInternetBanner extends StatelessWidget {
  const NoInternetBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: Colors.grey,
        child: CupertinoAlertDialog(
          title: Text(
            LocaleKeys.title_message_error.tr(),
            style: context.tsTextStyle.titleAlertDialog,
            textAlign: TextAlign.center,
          ),
          content: Padding(
            padding: EdgeInsets.only(top: 8.sp),
            child: Text(
              LocaleKeys.no_internet_message_error.tr(),
              style: context.tsTextStyle.contentAlertDialog,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ),
    );
  }
}
