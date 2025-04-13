import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/weather/domain/entities/weather_entity.dart';
import 'package:ts_weather/features/weather/domain/repositories/weather_repository.dart';

class GetCurrentWeather {
  final WeatherRepository repository;

  GetCurrentWeather(this.repository);

  Future<Either<AppException, WeatherEntity>> execute(
	{double? lat, double? lon}) async {
	return await repository.getCurrentWeather(lat: lat, lon: lon);
  }
}