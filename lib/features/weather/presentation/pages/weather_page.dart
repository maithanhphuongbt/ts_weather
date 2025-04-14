import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/network/dio_client.dart';
import 'package:ts_weather/core/theme/blocs/theme_bloc.dart';
import 'package:ts_weather/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:ts_weather/features/weather/data/respositories/weather_repository_impl.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_current_weather.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_weather_forecast.dart';
import 'package:ts_weather/features/weather/presentation/blocs/weather_bloc.dart';
import 'package:ts_weather/features/weather/presentation/widgets/current_weather_widget.dart';
import 'package:ts_weather/features/weather/presentation/widgets/forecast_list_widget.dart';
import 'package:ts_weather/features/weather/presentation/widgets/weather_error_widget.dart';
import 'package:ts_weather/features/weather/presentation/widgets/weather_loading_widget.dart';

@RoutePage()
class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.select<ThemeBloc, bool>((bloc) {
      final state = bloc.state;
      return state.maybeMap(
        success: (state) => state.isDarkMode,
        orElse: () => false,
      );
    });
    final currentLocale = context.locale;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              context.read<ThemeBloc>().add(const ThemeEvent.toggle());
            },
          ),
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.sp),
              child: Text(currentLocale == const Locale('en') ? '🇻🇳': '🇺🇸'),
            ),
            onTap: () {
              context.setLocale(
                currentLocale == const Locale('en') ? const Locale('vi') : const Locale('en'),
              );
            },
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => WeatherBloc(
          GetCurrentWeather(
            WeatherRepositoryImpl(
              remoteDataSource: WeatherRemoteDataSource(DioClient().dio),
            ),
          ),
          GetWeatherForecast(
            WeatherRepositoryImpl(
              remoteDataSource: WeatherRemoteDataSource(DioClient().dio),
            ),
          ),
        )..add(const WeatherEvent.fetchWeather()),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const WeatherLoadingWidget(),
              loaded: (currentWeather, forecast) => Column(
                children: [
                  CurrentWeatherWidget(weather: currentWeather),
                  SizedBox(height: 24.h),
                  ForecastListWidget(forecast: forecast, locale: currentLocale,),
                ],
              ),
              error: (error) => WeatherErrorWidget(
                onRetry: () => context.read<WeatherBloc>().add(WeatherEvent.fetchWeather()),
              ),
            );
          },
        ),
      ),
    );
  }
}

