import 'package:flutter/material.dart';
import 'package:ts_weather/core/constants/app_icon.dart';

class WeatherLoadingWidget extends StatelessWidget {
  const WeatherLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(ic_loading, width: 50, height: 50));
  }
}
