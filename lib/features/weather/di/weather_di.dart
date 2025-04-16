import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ts_weather/core/di/di.dart';
import 'package:ts_weather/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:ts_weather/features/weather/data/respositories/weather_repository_impl.dart';
import 'package:ts_weather/features/weather/domain/repositories/weather_repository.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_current_weather.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_weather_forecast.dart';
import 'package:ts_weather/features/weather/presentation/blocs/weather_bloc.dart';

// **Data Source**
final weatherRemoteDataSourceProvider = Provider.autoDispose<WeatherRemoteDataSource>((ref) {
  return WeatherRemoteDataSource(ref.watch(openWeatherClientProvider));
});

// **Repository**
final weatherRepositoryProvider = Provider.autoDispose<WeatherRepository>((ref) {
  return WeatherRepositoryImpl(remoteDataSource: ref.watch(weatherRemoteDataSourceProvider));
});

// **Use Case**
final getCurrentWeatherUseCaseProvider = Provider.autoDispose<GetCurrentWeather>((ref) {
  return GetCurrentWeather(ref.watch(weatherRepositoryProvider));
});

final getWeatherForecastUseCaseProvider = Provider.autoDispose<GetWeatherForecast>((ref) {
  return GetWeatherForecast(ref.watch(weatherRepositoryProvider));
});

// **Bloc**
final weatherBlocProvider = Provider.autoDispose<WeatherBloc>((ref) {
  final getCurrentWeather = ref.watch(getCurrentWeatherUseCaseProvider);
  final getWeatherForecast = ref.watch(getWeatherForecastUseCaseProvider);
  return WeatherBloc(getCurrentWeather, getWeatherForecast);
});
