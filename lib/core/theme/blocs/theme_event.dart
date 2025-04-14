part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.load() = _LoadTheme;
  const factory ThemeEvent.toggle() = _ToggleTheme;
}