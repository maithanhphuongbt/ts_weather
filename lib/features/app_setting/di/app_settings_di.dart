import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ts_weather/core/di/di.dart';
import 'package:ts_weather/features/app_setting/data/respositories/app_settings_repository_impl.dart';
import 'package:ts_weather/features/app_setting/domain/repositories/app_settings_repository.dart';
import 'package:ts_weather/features/app_setting/domain/usecases/update_theme.dart';
import 'package:ts_weather/features/app_setting/domain/usecases/watching_connection.dart';
import 'package:ts_weather/features/app_setting/presentation/blocs/app_settings_bloc.dart';

// Repository Provider (giữ nguyên)
final appSettingRepositoryProvider = Provider<AppSettingsRepository>((ref) {
  return AppSettingsRepositoryImpl(
    connectivity: ref.watch(connectivityProvider),
    prefs: ref.watch(sharedPreferencesProvider),
  );
});

// Provider cho UpdateTheme use case
final updateThemeProvider = Provider<UpdateTheme>((ref) {
  return UpdateTheme(ref.watch(appSettingRepositoryProvider));
});

// Provider cho WatchingConnection use case
final watchingConnectionProvider = Provider<WatchingConnection>((ref) {
  return WatchingConnection(ref.watch(appSettingRepositoryProvider));
});

// Provider cho BLoC
final appSettingBlocProvider = Provider<AppSettingsBloc>((ref) {
  return AppSettingsBloc(
    ref.watch(updateThemeProvider),
    ref.watch(watchingConnectionProvider),
  );
});