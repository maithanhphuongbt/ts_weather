import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ts_weather/core/di/di.dart';
import 'package:ts_weather/features/app_setting/data/respositories/app_settings_repository_impl.dart';
import 'package:ts_weather/features/app_setting/domain/repositories/app_settings_repository.dart';
import 'package:ts_weather/features/app_setting/domain/usecases/update_theme.dart';
import 'package:ts_weather/features/app_setting/domain/usecases/watching_connection.dart';
import 'package:ts_weather/features/app_setting/presentation/blocs/app_settings_bloc.dart';

// **Repository**
final appSettingRepositoryProvider = Provider<AppSettingsRepository>((ref) {
  return AppSettingsRepositoryImpl(
    connectivity: ref.watch(connectivityProvider),
    prefs: ref.watch(sharedPreferencesProvider),
  );
});

// **Use Case**
final updateThemeProvider = Provider<UpdateTheme>((ref) {
  return UpdateTheme(ref.watch(appSettingRepositoryProvider));
});

final watchingConnectionProvider = Provider<WatchingConnection>((ref) {
  return WatchingConnection(ref.watch(appSettingRepositoryProvider));
});

// **Bloc**
final appSettingBlocProvider = Provider.autoDispose<AppSettingsBloc>((ref) {
  return AppSettingsBloc(ref.watch(updateThemeProvider), ref.watch(watchingConnectionProvider));
});
