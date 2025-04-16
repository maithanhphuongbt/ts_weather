import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ts_weather/core/network/dio_client.dart';

// Provider for checking connectivity status
final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

// Provider for shared preferences
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('sharedPreferencesProvider');
});

final openWeatherClientProvider = Provider<Dio>((ref) {
  const baseUrl = 'https://api.openweathermap.org/data/2.5/';
  return DioClient(baseUrl: baseUrl).dio;
});
