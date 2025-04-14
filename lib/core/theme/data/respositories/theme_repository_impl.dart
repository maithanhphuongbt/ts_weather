import 'package:ts_weather/core/theme/data/datasources/theme_local_datasource.dart';
import 'package:ts_weather/core/theme/domain/entities/theme_entity.dart';
import 'package:ts_weather/core/theme/domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl({required this.localDataSource});

  @override
  Future<ThemeEntity> getThemeMode() async {
    final isDarkMode = await localDataSource.getCachedThemeMode();
    return ThemeEntity(isDarkMode: isDarkMode);
  }

  @override
  Future<void> setThemeMode(bool isDarkMode) async {
    await localDataSource.cacheThemeMode(isDarkMode);
  }
}