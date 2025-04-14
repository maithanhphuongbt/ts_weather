import 'package:ts_weather/core/theme/domain/entities/theme_entity.dart';

abstract class ThemeRepository {
  Future<ThemeEntity> getThemeMode();
  Future<void> setThemeMode(bool isDarkMode);
}