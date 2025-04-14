part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.loading() = _Loading;
  const factory ThemeState.success(bool isDarkMode) = _Success;
  const factory ThemeState.error(String message) = _Error;
}