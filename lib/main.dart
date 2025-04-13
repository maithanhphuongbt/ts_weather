import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ts_weather/core/network/dio_client.dart';
import 'package:ts_weather/core/network/network_info.dart';
import 'package:ts_weather/core/routes/app_router.dart';
import 'package:ts_weather/core/services/location_service.dart';
import 'package:ts_weather/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:ts_weather/features/weather/data/respositories/weather_repository_impl.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_current_weather.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_weather_forecast.dart';
import 'package:ts_weather/features/weather/presentation/blocs/weather_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final dioClient = DioClient();
  final remoteDataSource = WeatherRemoteDataSource(dioClient.dio);
  final weatherRepository = WeatherRepositoryImpl(
    remoteDataSource: remoteDataSource,
  );

  final getCurrentWeather = GetCurrentWeather(weatherRepository);
  final getWeatherForecast = GetWeatherForecast(weatherRepository);

  runApp(EasyLocalization(
    supportedLocales: [Locale('en'), Locale('vi')],
    path: 'assets/translations',
    fallbackLocale: Locale('en'),
    child: MyApp(
      getCurrentWeather: getCurrentWeather,
      getWeatherForecast: getWeatherForecast,
    ),
  ));
}

class MyApp extends StatelessWidget {
  final GetCurrentWeather getCurrentWeather;
  final GetWeatherForecast getWeatherForecast;

  const MyApp({
    super.key,
    required this.getCurrentWeather,
    required this.getWeatherForecast,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          title: 'Weather App',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xFFF5F6F7),
          ),
          routerConfig: AppRouter().config(),
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => WeatherBloc(
                    getCurrentWeather,
                    getWeatherForecast,
                  )..add(const WeatherEvent.fetchWeather()),
                ),
              ],
              child: child!,
            );
          },
        );
      },
    );
  }
}
