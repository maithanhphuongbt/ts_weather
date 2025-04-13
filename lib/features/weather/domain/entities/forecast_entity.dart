import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_entity.freezed.dart';

@freezed
class ForecastEntity with _$ForecastEntity {
  const factory ForecastEntity({
	required DateTime date,
	required double avgTemp,
	required double minTemp,
	required double maxTemp,
	required String weatherCondition,
	required String weatherIcon,
  }) = _ForecastEntity;
}