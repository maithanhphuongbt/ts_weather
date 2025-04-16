import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/constants/app_locale.dart';
import 'package:ts_weather/features/app_setting/di/app_settings_di.dart';
import 'package:ts_weather/features/app_setting/presentation/blocs/app_settings_bloc.dart';
import 'package:ts_weather/features/weather/di/weather_di.dart';
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
    final appSettingsBloc = ref.read(appSettingBlocProvider);
    final weatherBloc = ref.read(weatherBlocProvider);

    return BlocBuilder<AppSettingsBloc, AppSettingsState>(
      bloc: appSettingsBloc,
      builder: (context, appSettingState) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: _buildFloatingActionButtons(context, appSettingsBloc, appSettingState, currentLocale),
          body: _buildWeatherContent(context, currentLocale, weatherBloc),
        );
      },
    );
  }

  Widget _buildWeatherContent(BuildContext context, Locale currentLocale, WeatherBloc weatherBloc) {
    return BlocProvider.value(
      value: weatherBloc..add(const WeatherEvent.fetchWeather()),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const WeatherLoadingWidget(),
            loaded:
                (currentWeather, forecast) => Column(
                  children: [
                    CurrentWeatherWidget(weather: currentWeather),
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
    );
  }

  Widget _buildFloatingActionButtons(
    BuildContext context,
    AppSettingsBloc appSettingsBloc,
    AppSettingsState appSettingState,
    Locale currentLocale,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FloatingActionButton(
          onPressed:
              () => appSettingsBloc.add(
                AppSettingsEvent.themeChanged(
                  appSettingState.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
                ),
              ),
          child: Icon(appSettingState.themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode),
          mini: true,
        ),
        SizedBox(width: 8.sp),
        FloatingActionButton(
          onPressed:
              () => context.setLocale(
                currentLocale == AppLocale.englishLocale ? AppLocale.vietnameseLocale : AppLocale.englishLocale,
              ),
          child: Text(currentLocale == AppLocale.englishLocale ? '🇻🇳' : '🇺🇸'),
          mini: true,
        ),
      ],
    );
  }
}
