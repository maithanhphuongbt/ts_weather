abstract class AppSettingsLocalDatasource {
  Future<void> saveThemeMode(int modeIndex);
  Future<int?> getThemeMode();
}