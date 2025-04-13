import 'package:flutter/material.dart';

class WeatherLoadingWidget extends StatelessWidget {
  const WeatherLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
	return Center(
	  child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
		  Image.asset(
			'assets/icons/ic_loading.png',
			width: 50,
			height: 50,
		  ),
		  const SizedBox(height: 20),
		  const Text(
			'Loading weather data...',
			style: TextStyle(fontSize: 16),
		  ),
		],
	  ),
	);
  }
}
