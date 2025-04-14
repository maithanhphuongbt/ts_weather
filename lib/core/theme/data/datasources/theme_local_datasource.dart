import 'package:ts_weather/core/util/share_preference_util.dart';

abstract class ThemeLocalDataSource {
  Future<void> cacheThemeMode(bool isDarkMode);
  Future<bool> getCachedThemeMode();
}

class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  final SharedPreferencesUtil _prefs;

  ThemeLocalDataSourceImpl() : _prefs = SharedPreferencesUtil();

  @override
  Future<void> cacheThemeMode(bool isDarkMode) async {
	await _prefs.setBool(SharedPreferencesKey.isDarkMode, isDarkMode);
  }

  @override
  Future<bool> getCachedThemeMode() async {
	return await _prefs.getBool(SharedPreferencesKey.isDarkMode) ?? false;
  }
}