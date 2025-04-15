import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';
import 'package:ts_weather/features/app_setting/domain/entities/app_settings_entity.dart';
import 'package:ts_weather/features/app_setting/domain/usecases/update_theme.dart';
import 'package:ts_weather/features/app_setting/domain/usecases/watching_connection.dart';

part 'app_settings_bloc.freezed.dart';
part 'app_settings_event.dart';
part 'app_settings_state.dart';

class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  final UpdateTheme _updateTheme;
  final WatchingConnection _watchingConnection;
  late final StreamSubscription<Either<AppException, AppSettingsEntity>> _settingsSub;

  AppSettingsBloc(this._updateTheme, this._watchingConnection)
      : super(AppSettingsState.initial()) {
    on<_LoadSuccess>(_onLoadSuccess);
    on<_LoadFailure>(_onLoadFailure);
    on<ThemeChanged>(_onThemeChanged);

    _settingsSub = _watchingConnection.execute().listen((either) {
      either.fold(
            (failure) => add(AppSettingsEvent.loadFailure(failure)),
            (settings) => add(AppSettingsEvent.loadSuccess(settings)),
      );
    });
  }

  Future<void> _onThemeChanged(ThemeChanged event, Emitter<AppSettingsState> emit) async {
    await _updateTheme.execute(event.themeMode).run();
  }

  void _onLoadSuccess(_LoadSuccess event, Emitter<AppSettingsState> emit) {
    emit(AppSettingsState(
      themeMode: event.settings.themeMode,
      hasInternet: event.settings.isConnected,
    ));
  }

  void _onLoadFailure(_LoadFailure event, Emitter<AppSettingsState> emit) {
    debugPrint("Watching connection error!");
  }

  @override
  Future<void> close() async {
    await _settingsSub.cancel();
    return super.close();
  }
}

