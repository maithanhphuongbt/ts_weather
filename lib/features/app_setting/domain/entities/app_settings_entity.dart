import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@freezed
class AppSettingsEntity with _$AppSettingsEntity {
  const factory AppSettingsEntity({@Default(ThemeMode.system) ThemeMode themeMode, @Default(true) bool isConnected}) =
      _AppSettingsEntity;
}
