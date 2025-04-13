import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class AppException with _$AppException {
  // Auth
  const factory AppException.locationDenied() = LocationDenied;
  const factory AppException.locationDeniedForever() = LocationDeniedForever;
  const factory AppException.locationNotAvailable() = LocationNotAvailable;

  // Network
  const factory AppException.noInternetConnection() = NoInternetConnection;
  const factory AppException.serverError() = ServerError;
  const factory AppException.apiError(String message) = ApiError;

  // Weather
  const factory AppException.failedToGetWeather() = FailedToGetWeather;

  @override
  String toString() {
	return when(
	  locationDenied: () => 'Location permission denied',
	  locationDeniedForever: () => 'Location permission denied forever',
	  locationNotAvailable: () => 'Location not available',
	  noInternetConnection: () => 'No internet connection',
	  serverError: () => 'Server error',
	  apiError: (message) => message,
	  failedToGetWeather: () => 'Failed to get weather data',
	);
  }
}