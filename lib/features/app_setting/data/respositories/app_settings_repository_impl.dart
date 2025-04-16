import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/app_setting/domain/entities/app_settings_entity.dart';
import 'package:ts_weather/features/app_setting/domain/repositories/app_settings_repository.dart';

class AppSettingsRepositoryImpl implements AppSettingsRepository {
  final Connectivity _connectivity;
  final SharedPreferences _prefs;
  final StreamController<Either<AppException, AppSettingsEntity>> _controller;

  AppSettingsRepositoryImpl({required Connectivity connectivity, required SharedPreferences prefs})
    : _connectivity = connectivity,
      _prefs = prefs,
      _controller = StreamController.broadcast() {
    _init();
  }

  Future<void> _init() async {
    _controller.add(await _getCurrentSettings());
    _connectivity.onConnectivityChanged.listen((_) async => _controller.add(await _getCurrentSettings()));
  }

  @override
  Stream<Either<AppException, AppSettingsEntity>> watchSettings() => _controller.stream;

  @override
  TaskEither<AppException, Unit> updateThemeMode(ThemeMode mode) {
    return TaskEither.tryCatch(() async {
      await _prefs.setInt('theme_mode', mode.index);
      _controller.add(await _getCurrentSettings());
      return unit;
    }, (error, _) => const AppException.failedToUpdateThemeMode());
  }

  Future<Either<AppException, AppSettingsEntity>> _getCurrentSettings() async {
    return TaskEither.tryCatch(() async {
      return AppSettingsEntity(themeMode: _getSavedTheme(), isConnected: await _checkConnection());
    }, (error, _) => const AppException.failedToLoadSettings()).run();
  }

  ThemeMode _getSavedTheme() {
    final themeIndex = _prefs.getInt('theme_mode') ?? ThemeMode.system.index;
    return ThemeMode.values[themeIndex];
  }

  Future<bool> _checkConnection() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result.any((r) => r != ConnectivityResult.none);
    } catch (_) {
      return false; // Fallback khi có lỗi
    }
  }

  Future<void> dispose() async => _controller.close();
}
