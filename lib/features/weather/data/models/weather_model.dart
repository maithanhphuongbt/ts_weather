import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
	required String name,
	required Main main,
	required List<Weather> weather,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
	_$WeatherModelFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
	required double temp,
	@JsonKey(name: 'temp_min') required double tempMin,
	@JsonKey(name: 'temp_max') required double tempMax,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
	required int id,
	required String main,
	required String description,
	required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}

@freezed
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
	required List<ForecastItem> list,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
	_$ForecastModelFromJson(json);
}

@freezed
class ForecastItem with _$ForecastItem {
  const factory ForecastItem({
	required int dt,
	required Main main,
	required List<Weather> weather,
  }) = _ForecastItem;

  factory ForecastItem.fromJson(Map<String, dynamic> json) =>
	_$ForecastItemFromJson(json);
}