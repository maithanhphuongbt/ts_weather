import 'package:ts_weather/core/theme/domain/entities/theme_entity.dart';
import 'package:ts_weather/core/theme/domain/repositories/theme_repository.dart';

class GetThemeModeUseCase {
  final ThemeRepository repository;

  GetThemeModeUseCase({required this.repository});

  Future<ThemeEntity> call() async {
	return await repository.getThemeMode();
  }
}