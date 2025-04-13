import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';

class WeatherErrorWidget extends StatelessWidget {
  final AppException error;
  final VoidCallback onRetry;

  const WeatherErrorWidget({
	super.key,
	required this.error,
	required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
	return Center(
	  child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
		  Icon(
			Icons.error_outline,
			size: 48.w,
			color: Colors.red,
		  ),
		  SizedBox(height: 16.h),
		  Text(
			error.toString(),
			style: TextStyle(
			  fontSize: 16.sp,
			  color: Colors.red,
			),
			textAlign: TextAlign.center,
		  ),
		  SizedBox(height: 24.h),
		  ElevatedButton(
			onPressed: onRetry,
			child: Text(
			  'Retry',
			  style: TextStyle(fontSize: 16.sp),
			),
		  ),
		],
	  ),
	);
  }
}