import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ts_weather/core/extension/ts_text_style.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';

class ForecastListWidget extends StatelessWidget {
  final List<ForecastEntity> forecast;
  final Locale locale;

  const ForecastListWidget({super.key, required this.forecast, required this.locale});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 16.sp),
          itemCount: forecast.length,
          separatorBuilder: (context, index) => const Divider(height: 1),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('EEEE', locale == const Locale('en') ? 'en' : 'vi').format(day.date),
            style: context.tsTextStyle.weekday,
          ),
          Text('${day.avgTemp.round()}°C', style: context.tsTextStyle.temperatureSmall),
        ],
      ),
    );
  }
}
