import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';
import 'package:ts_weather/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<AppException, WeatherEntity>> getCurrentWeather(
    {double? lat, double? lon});
  Future<Either<AppException, List<ForecastEntity>>> getWeatherForecast(
    {double? lat, double? lon});
}