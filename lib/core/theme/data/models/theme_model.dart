import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ts_weather/core/theme/domain/entities/theme_entity.dart';

part 'theme_model.freezed.dart';

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
	required bool isDarkMode,
  }) = _ThemeModel;

  // Convert to entity
  ThemeEntity toEntity() => ThemeEntity(isDarkMode: isDarkMode);

  // Convert from entity
  factory ThemeModel.fromEntity(ThemeEntity entity) {
	return ThemeModel(isDarkMode: entity.isDarkMode);
  }
}