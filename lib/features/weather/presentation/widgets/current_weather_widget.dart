import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/features/weather/domain/entities/weather_entity.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherEntity weather;

  const CurrentWeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
	return Card(
	  elevation: 2,
	  shape: RoundedRectangleBorder(
		borderRadius: BorderRadius.circular(12.r),
	  ),
	  child: Padding(
		padding: EdgeInsets.all(16.w),
		child: Column(
		  children: [
			Text(
			  weather.locationName,
			  style: TextStyle(
				fontSize: 24.sp,
				fontWeight: FontWeight.bold,
			  ),
			),
			SizedBox(height: 16.h),
			Row(
			  mainAxisAlignment: MainAxisAlignment.center,
			  children: [
				Image.network(
				  'https://openweathermap.org/img/wn/${weather.weatherIcon}@2x.png',
				  width: 80.w,
				  height: 80.h,
				),
				SizedBox(width: 16.w),
				Text(
				  '${weather.currentTemp.round()}°C',
				  style: TextStyle(
					fontSize: 48.sp,
					fontWeight: FontWeight.bold,
				  ),
				),
			  ],
			),
			SizedBox(height: 8.h),
			Text(
			  weather.weatherDescription,
			  style: TextStyle(
				fontSize: 16.sp,
				fontStyle: FontStyle.italic,
			  ),
			),
			SizedBox(height: 16.h),
			Row(
			  mainAxisAlignment: MainAxisAlignment.spaceAround,
			  children: [
				_buildTempInfo('Min', '${weather.minTemp.round()}°C'),
				_buildTempInfo('Max', '${weather.maxTemp.round()}°C'),
			  ],
			),
		  ],
		),
	  ),
	);
  }

  Widget _buildTempInfo(String label, String value) {
	return Column(
	  children: [
		Text(
		  label,
		  style: TextStyle(
			fontSize: 14.sp,
			color: Colors.grey,
		  ),
		),
		SizedBox(height: 4.h),
		Text(
		  value,
		  style: TextStyle(
			fontSize: 18.sp,
			fontWeight: FontWeight.bold,
		  ),
		),
	  ],
	);
  }
}