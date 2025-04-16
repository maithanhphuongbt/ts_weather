import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/app_setting/domain/entities/app_settings_entity.dart';
import 'package:ts_weather/features/app_setting/domain/repositories/app_settings_repository.dart';

class WatchingConnection {
  final AppSettingsRepository repository;

  WatchingConnection(this.repository);

  Stream<Either<AppException, AppSettingsEntity>> execute() {
    return repository.watchSettings();
  }
}
