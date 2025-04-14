import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ts_weather/core/network/logger_interceptor.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.openweathermap.org/data/2.5/',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(LoggerInterceptor());
    }
    dio.interceptors.add(_interceptorsWrapper());
  }
  
  InterceptorsWrapper _interceptorsWrapper() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        handler.next(options);
      },
      onResponse: (response, handler) {
        handler.next(response);
      },
      onError: (error, handler) {
        handler.next(error);
      },
    );
  }
}
