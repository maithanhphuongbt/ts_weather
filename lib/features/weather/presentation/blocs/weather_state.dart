part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loaded({
    required WeatherEntity currentWeather,
    required List<ForecastEntity> forecast,
  }) = _Loaded;
  const factory WeatherState.error(AppException error) = _Error;
}