import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ts_weather/core/theme/domain/usecases/get_theme_mode_usecase.dart';
import 'package:ts_weather/core/theme/domain/usecases/set_theme_mode_usecase.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final GetThemeModeUseCase _getThemeMode;
  final SetThemeModeUseCase _setThemeMode;

  ThemeBloc({
	required GetThemeModeUseCase getThemeMode,
	required SetThemeModeUseCase setThemeMode,
  })  : _getThemeMode = getThemeMode,
	  _setThemeMode = setThemeMode,
	  super(const ThemeState.initial()) {
	on<ThemeEvent>(_onEvent);
  }

  Future<void> _onEvent(ThemeEvent event, Emitter<ThemeState> emit) async {
	await event.map(
	  load: (e) => _onLoadTheme(e, emit),
	  toggle: (e) => _onToggleTheme(e, emit),
	);
  }

  Future<void> _onLoadTheme(
	_LoadTheme event,
	Emitter<ThemeState> emit,
	) async {
	emit(const ThemeState.loading());
	try {
	  final theme = await _getThemeMode();
	  emit(ThemeState.success(theme.isDarkMode));
	} catch (e) {
	  emit(ThemeState.error(e.toString()));
	}
  }

  Future<void> _onToggleTheme(
	_ToggleTheme event,
	Emitter<ThemeState> emit,
	) async {
	state.maybeWhen(
	  success: (isDarkMode) async {
		final newMode = !isDarkMode;
		await _setThemeMode(newMode);
		if (emit.isDone) return;
		emit(ThemeState.success(newMode));
	  },
	  orElse: () {},
	);
  }
}