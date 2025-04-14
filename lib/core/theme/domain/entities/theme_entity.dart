import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_entity.freezed.dart';

@freezed
class ThemeEntity with _$ThemeEntity {
  const factory ThemeEntity({
	required bool isDarkMode,
  }) = _ThemeEntity;
}