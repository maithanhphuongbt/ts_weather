import 'package:ts_weather/core/theme/domain/repositories/theme_repository.dart';

class SetThemeModeUseCase {
  final ThemeRepository repository;

  SetThemeModeUseCase({required this.repository});

  Future<void> call(bool isDarkMode) async {
	await repository.setThemeMode(isDarkMode);
  }
}