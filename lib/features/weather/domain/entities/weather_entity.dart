import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    required String locationName,
    required double currentTemp,
    double? minTemp,
    double? maxTemp,
    required String weatherCondition,
    required String weatherDescription,
    required String weatherIcon,
  }) = _WeatherEntity;
}
