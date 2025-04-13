import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';

class ForecastListWidget extends StatelessWidget {
  final List<ForecastEntity> forecast;

  const ForecastListWidget({super.key, required this.forecast});

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
		  crossAxisAlignment: CrossAxisAlignment.start,
		  children: [
			Text(
			  '4-Day Forecast',
			  style: TextStyle(
				fontSize: 20.sp,
				fontWeight: FontWeight.bold,
			  ),
			),
			SizedBox(height: 16.h),
			...forecast.take(4).map((day) => _buildForecastItem(day)).toList(),
		  ],
		),
	  ),
	);
  }

  Widget _buildForecastItem(ForecastEntity day) {
	return Padding(
	  padding: EdgeInsets.symmetric(vertical: 8.h),
	  child: Row(
		children: [
		  Expanded(
			flex: 2,
			child: Text(
			  DateFormat('EEEE').format(day.date),
			  style: TextStyle(
				fontSize: 16.sp,
				fontWeight: FontWeight.w500,
			  ),
			),
		  ),
		  Expanded(
			flex: 1,
			child: Image.network(
			  'https://openweathermap.org/img/wn/${day.weatherIcon}@2x.png',
			  width: 40.w,
			  height: 40.h,
			),
		  ),
		  Expanded(
			flex: 2,
			child: Text(
			  '${day.avgTemp.round()}°C',
			  style: TextStyle(
				fontSize: 16.sp,
				fontWeight: FontWeight.bold,
			  ),
			),
		  ),
		  Expanded(
			flex: 3,
			child: Row(
			  mainAxisAlignment: MainAxisAlignment.end,
			  children: [
				Text(
				  '${day.minTemp.round()}°',
				  style: TextStyle(
					fontSize: 14.sp,
					color: Colors.grey,
				  ),
				),
				SizedBox(width: 8.w),
				Text(
				  '${day.maxTemp.round()}°',
				  style: TextStyle(
					fontSize: 14.sp,
					fontWeight: FontWeight.bold,
				  ),
				),
			  ],
			),
		  ),
		],
	  ),
	);
  }
}