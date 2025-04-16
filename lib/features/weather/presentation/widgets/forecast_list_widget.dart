import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/extension/date_time_ext.dart';
import 'package:ts_weather/core/extension/string_ext.dart';
import 'package:ts_weather/core/extension/ts_text_style_ext.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';

class ForecastListWidget extends StatelessWidget {
  final List<ForecastEntity> forecast;
  final Locale locale;

  const ForecastListWidget({super.key, required this.forecast, required this.locale});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(color: Colors.grey.withValues(alpha: 0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3)),
          ],
        ),
        child: ListView.separated(
          itemCount: 4,
          padding: EdgeInsets.all(16.sp),
          separatorBuilder: (context, index) => const Divider(thickness: 0.5),
          itemBuilder: (context, index) {
            final item = forecast[index];
            return _buildForecastItem(item, context);
          },
        ),
      ),
    );
  }

  Widget _buildForecastItem(ForecastEntity day, BuildContext context) {
    return Container(
      height: 80.sp,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day.date.formatEEE(locale), style: context.tsTextStyle.weekday),
          Text(day.avgTemp.round().toString().formatCelsius, style: context.tsTextStyle.temperatureSmall),
        ],
      ),
    );
  }
}
