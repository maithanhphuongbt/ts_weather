import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/app_setting/domain/entities/app_settings_entity.dart';

abstract class AppSettingsRepository {
  Stream<Either<AppException, AppSettingsEntity>> watchSettings();

  TaskEither<AppException, Unit> updateThemeMode(ThemeMode mode);
}
