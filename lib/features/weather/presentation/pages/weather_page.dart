import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/network/dio_client.dart';
import 'package:ts_weather/features/app_setting/di/app_settings_di.dart';
import 'package:ts_weather/features/app_setting/presentation/blocs/app_settings_bloc.dart';
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
class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = context.locale;
    final bloc = ref.watch(appSettingBlocProvider);
    return BlocBuilder<AppSettingsBloc, AppSettingsState>(
      bloc: bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FloatingActionButton(
                onPressed:
                    () => bloc.add(
                      AppSettingsEvent.themeChanged(
                        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
                      ),
                    ),
                child: Icon(state.themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode),
                mini: true, // Consider using mini for a smaller size
              ),
              FloatingActionButton(
                onPressed:
                    () => context.setLocale(
                      currentLocale == const Locale('en') ? const Locale('vi') : const Locale('en'),
                    ),
                child: Text(currentLocale == const Locale('en') ? '🇻🇳' : '🇺🇸'),
                mini: true, // Consider using mini for a smaller size
              ),
            ],
          ),
          body: BlocProvider(
            create:
                (context) => WeatherBloc(
                  GetCurrentWeather(WeatherRepositoryImpl(remoteDataSource: WeatherRemoteDataSource(DioClient().dio))),
                  GetWeatherForecast(WeatherRepositoryImpl(remoteDataSource: WeatherRemoteDataSource(DioClient().dio))),
                )..add(const WeatherEvent.fetchWeather()),
            child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const WeatherLoadingWidget(),
                  loaded:
                      (currentWeather, forecast) => Column(
                        children: [
                          CurrentWeatherWidget(weather: currentWeather),
                          SizedBox(height: 24.h),
                          ForecastListWidget(forecast: forecast, locale: currentLocale),
                        ],
                      ),
                  error:
                      (error) => WeatherErrorWidget(
                        onRetry: () => context.read<WeatherBloc>().add(const WeatherEvent.fetchWeather()),
                      ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
