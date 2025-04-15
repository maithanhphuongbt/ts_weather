import 'package:flutter/material.dart';

class WeatherLoadingWidget extends StatelessWidget {
  const WeatherLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
	return Center(
	  child: Image.asset(
		'assets/icons/ic_loading.png',
		width: 50,
		height: 50,
	  ),
	);
  }
}
