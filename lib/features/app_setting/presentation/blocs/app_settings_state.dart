part of 'app_settings_bloc.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({required ThemeMode themeMode, required bool hasInternet}) = _AppSettingsState;

  factory AppSettingsState.initial() => const AppSettingsState(themeMode: ThemeMode.system, hasInternet: true);
}
