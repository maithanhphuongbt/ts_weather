import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/extension/ts_color_style.dart';
import 'package:ts_weather/core/extension/ts_text_style.dart';
import 'package:ts_weather/features/weather/domain/entities/weather_entity.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherEntity weather;

  const CurrentWeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.tsColor.currentWeatherBackground,
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 56.sp),
          Text('${weather.currentTemp.round()}°', style: context.tsTextStyle.temperatureLarge),
          Text(weather.locationName, style: context.tsTextStyle.cityName),
          SizedBox(height: 62.sp),
        ],
      ),
    );
  }
}
