part of 'app_settings_bloc.dart';

@freezed
class AppSettingsEvent with _$AppSettingsEvent {
  const factory AppSettingsEvent.themeChanged(ThemeMode themeMode) = ThemeChanged;
  const factory AppSettingsEvent.loadSuccess(AppSettingsEntity settings) = _LoadSuccess;
  const factory AppSettingsEvent.loadFailure(AppException failure) = _LoadFailure;
}
