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
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 16.sp),
          itemCount: 4,
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
