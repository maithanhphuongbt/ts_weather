import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ts_weather/core/constants/app_key.dart';
import 'package:ts_weather/features/weather/data/models/weather_model.dart';

part 'weather_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5')
abstract class WeatherRemoteDataSource {
  factory WeatherRemoteDataSource(Dio dio, {String baseUrl}) = _WeatherRemoteDataSource;

  @GET('/weather')
  Future<WeatherModel> getCurrentWeather(
    @Query('lat') double lat,
    @Query('lon') double lon,{
      @Query('units') String units = "metric",
      @Query('appid') String appId = AppKey.openWeatherApiKey,
    }
  );

  @GET('/forecast')
  Future<ForecastModel> getWeatherForecast(
    @Query('lat') double lat,
    @Query('lon') double lon, {
    @Query('units') String units = "metric",
    @Query('appid') String appId = AppKey.openWeatherApiKey,
  });
}
