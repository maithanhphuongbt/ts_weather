import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/weather/domain/entities/forecast_entity.dart';
import 'package:ts_weather/features/weather/domain/entities/weather_entity.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_current_weather.dart';
import 'package:ts_weather/features/weather/domain/usecases/get_weather_forecast.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetCurrentWeather _getCurrentWeather;
  final GetWeatherForecast _getWeatherForecast;

  WeatherBloc(this._getCurrentWeather, this._getWeatherForecast) : super(const WeatherState.initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.map(fetchWeather: (e) => _fetchWeather(e, emit));
    });
  }

  Future<void> _fetchWeather(FetchWeather event, Emitter<WeatherState> emit) async {
    emit(const WeatherState.loading());

    final currentWeatherResult = await _getCurrentWeather.execute(lat: event.lat, lon: event.lon);

    final forecastResult = await _getWeatherForecast.execute(lat: event.lat, lon: event.lon);

    currentWeatherResult.fold((failure) => emit(WeatherState.error(failure)), (currentWeather) {
      forecastResult.fold(
        (failure) => emit(WeatherState.error(failure)),
        (forecast) => emit(WeatherState.loaded(currentWeather: currentWeather, forecast: forecast)),
      );
    });
  }
}
