import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/constanst/constanst.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/core/services/location_service.dart';
import 'package:ts_weather/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:ts_weather/features/weather/data/models/weather_model.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';
import 'package:ts_weather/features/weather/domain/entities/weather_entity.dart';
import 'package:ts_weather/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  WeatherRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppException, WeatherEntity>> getCurrentWeather({double? lat, double? lon}) async {
    try {
      final response = await (lat != null && lon != null
        ? remoteDataSource.getCurrentWeather(lat, lon)
        : (() async {
        final position = await LocationService.shared.getCurrentPosition();
        return remoteDataSource.getCurrentWeather(position.latitude, position.longitude,);
      })());

      return Right(_mapWeatherModelToEntity(response));
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  @override
  Future<Either<AppException, List<ForecastEntity>>> getWeatherForecast(
    {double? lat, double? lon}) async {
    try {
      final response = await (lat != null && lon != null
        ? remoteDataSource.getWeatherForecast(lat, lon)
        : (() async {
        final position = await LocationService.shared.getCurrentPosition();
        return remoteDataSource.getWeatherForecast(position.latitude, position.longitude);
      })());

      return Right(_mapForecastModelToEntity(response));
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  WeatherEntity _mapWeatherModelToEntity(WeatherModel model) {
    return WeatherEntity(
      locationName: model.name,
      currentTemp: model.main.temp,
      minTemp: model.main.tempMin,
      maxTemp: model.main.tempMax,
      weatherCondition: model.weather.first.main,
      weatherDescription: model.weather.first.description,
      weatherIcon: model.weather.first.icon,
    );
  }

  List<ForecastEntity> _mapForecastModelToEntity(ForecastModel model) {
    // Group forecast items by day and calculate average temperature
    final dailyForecasts = <DateTime, List<ForecastItem>>{};

    for (final item in model.list) {
      final date = DateTime.fromMillisecondsSinceEpoch(item.dt * 1000);
      final day = DateTime(date.year, date.month, date.day);

      dailyForecasts.putIfAbsent(day, () => []).add(item);
    }

    return dailyForecasts.entries.map((entry) {
      final items = entry.value;
      final avgTemp = items.map((e) => e.main.temp).reduce((a, b) => a + b) / items.length;
      final minTemp = items.map((e) => e.main.tempMin).reduce((a, b) => a < b ? a : b);
      final maxTemp = items.map((e) => e.main.tempMax).reduce((a, b) => a > b ? a : b);

      return ForecastEntity(
        date: entry.key,
        avgTemp: avgTemp,
        minTemp: minTemp,
        maxTemp: maxTemp,
        weatherCondition: items.first.weather.first.main,
        weatherIcon: items.first.weather.first.icon,
      );
    }).toList();
  }

  AppException _handleError(dynamic error) {
    if (error is DioException) {
      if (error.type == DioExceptionType.connectionError) {
        return const AppException.noInternetConnection();
      } else if (error.response?.statusCode == 401) {
        return const AppException.apiError('Invalid API key');
      } else if (error.response?.statusCode == 404) {
        return const AppException.apiError('City not found');
      } else if (error.response?.statusCode == 500) {
        return const AppException.serverError();
      }
    }
    return const AppException.failedToGetWeather();
  }
}