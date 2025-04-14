import 'package:flutter/material.dart';

/// This extension allows you to access the TSTextTheme properties directly from the BuildContext.
/// Example usage of the TSTextTheme in a widget:
///
/// Text(
///   'Submit',
///   style: context.tsTextStyle.temperatureLarge,
/// );

extension TSTextStyle on BuildContext {
  TSTextTheme get tsTextStyle =>
      Theme.of(this).extension<TSTextTheme>()!;
}

@immutable
class TSTextTheme extends ThemeExtension<TSTextTheme> {
  final TextStyle temperatureLarge;
  final TextStyle cityName;
  final TextStyle weekday;
  final TextStyle temperatureSmall;
  final TextStyle errorMessage;
  final TextStyle retryButton;

  const TSTextTheme({
    required this.temperatureLarge,
    required this.cityName,
    required this.weekday,
    required this.temperatureSmall,
    required this.errorMessage,
    required this.retryButton,
  });

  @override
  TSTextTheme copyWith({
    TextStyle? temperatureLarge,
    TextStyle? cityName,
    TextStyle? weekday,
    TextStyle? temperatureSmall,
    TextStyle? errorMessage,
    TextStyle? retryButton,
  }) {
    return TSTextTheme(
      temperatureLarge: temperatureLarge ?? this.temperatureLarge,
      cityName: cityName ?? this.cityName,
      weekday: weekday ?? this.weekday,
      temperatureSmall: temperatureSmall ?? this.temperatureSmall,
      errorMessage: errorMessage ?? this.errorMessage,
      retryButton: retryButton ?? this.retryButton,
    );
  }

  @override
  TSTextTheme lerp(ThemeExtension<TSTextTheme>? other, double t) {
    if (other is! TSTextTheme) {
      return this;
    }
    return TSTextTheme(
      temperatureLarge: TextStyle.lerp(temperatureLarge, other.temperatureLarge, t)!,
      cityName: TextStyle.lerp(cityName, other.cityName, t)!,
      weekday: TextStyle.lerp(weekday, other.weekday, t)!,
      temperatureSmall: TextStyle.lerp(temperatureSmall, other.temperatureSmall, t)!,
      errorMessage: TextStyle.lerp(errorMessage, other.errorMessage, t)!,
      retryButton: TextStyle.lerp(retryButton, other.retryButton, t)!,
    );
  }
}