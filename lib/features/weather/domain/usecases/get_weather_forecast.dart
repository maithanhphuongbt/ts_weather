import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';
import 'package:ts_weather/features/weather/domain/repositories/weather_repository.dart';

class GetWeatherForecast {
  final WeatherRepository repository;

  GetWeatherForecast(this.repository);

  Future<Either<AppException, List<ForecastEntity>>> execute({double? lat, double? lon}) async {
    return await repository.getWeatherForecast(lat: lat, lon: lon);
  }
}
