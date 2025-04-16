import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ts_weather/core/network/logger_interceptor.dart';

class DioClient {
  final Dio dio;

  DioClient({required String baseUrl})
    : dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ) {
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
