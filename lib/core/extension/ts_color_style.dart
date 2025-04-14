import 'package:flutter/material.dart';

/// This extension allows you to access the TSTextTheme properties directly from the BuildContext.
/// Example usage of the TSTextTheme in a widget:
///
/// Text(
///   'Submit',
///   style: context.tsTextStyle.temperatureLarge,
/// );
/// 
/// 

extension TSColor on BuildContext {
  TSColorTheme get tsColor =>
	Theme.of(this).extension<TSColorTheme>()!;
}

@immutable
class TSColorTheme extends ThemeExtension<TSColorTheme> {
  final Color? currentWeatherBackground;

  const TSColorTheme({required this.currentWeatherBackground});

  @override
  TSColorTheme copyWith({Color? currentWeatherBackground}) {
	return TSColorTheme(
	  currentWeatherBackground: currentWeatherBackground ?? this.currentWeatherBackground,
	);
  }

  @override
  TSColorTheme lerp(ThemeExtension<TSColorTheme>? other, double t) {
	if (other is! TSColorTheme) return this;
	return TSColorTheme(
	  currentWeatherBackground: Color.lerp(currentWeatherBackground, other.currentWeatherBackground, t),
	);
  }

  // Optional: add a helper for light and dark themes
  static const light = TSColorTheme(
	currentWeatherBackground: Color(0xFFE0F7FA), // example light color
  );

  static const dark = TSColorTheme(
	currentWeatherBackground: Color(0xFF263238), // example dark color
  );
}