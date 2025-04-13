import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ts_weather/features/weather/presentation/blocs/weather_bloc.dart';
import 'package:ts_weather/features/weather/presentation/widgets/current_weather_widget.dart';
import 'package:ts_weather/features/weather/presentation/widgets/forecast_list_widget.dart';
import 'package:ts_weather/features/weather/presentation/widgets/weather_error_widget.dart';
import 'package:ts_weather/features/weather/presentation/widgets/weather_loading_widget.dart';
import 'package:ts_weather/generated/locale_keys.g.dart';

@RoutePage()
class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F7),
      appBar: AppBar(title: Text(LocaleKeys.hello.tr()), centerTitle: true),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const WeatherLoadingWidget(),
            loaded:
                (currentWeather, forecast) => SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Column(
                    children: [
                      CurrentWeatherWidget(weather: currentWeather),
                      SizedBox(height: 24.h),
                      ForecastListWidget(forecast: forecast),
                    ],
                  ),
                ),
            error:
                (error) => WeatherErrorWidget(
                  error: error,
                  onRetry: () => context.read<WeatherBloc>().add(WeatherEvent.fetchWeather()),
                ),
          );
        },
      ),
    );
  }
}
