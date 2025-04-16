import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/app_setting/domain/repositories/app_settings_repository.dart';

class UpdateTheme {
  final AppSettingsRepository repository;

  UpdateTheme(this.repository);

  TaskEither<AppException, Unit> execute(ThemeMode mode) {
    return repository.updateThemeMode(mode);
  }
}
