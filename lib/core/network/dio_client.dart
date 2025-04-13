import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart' show InternetConnectionChecker;
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

  _interceptorsWrapper() {
	return InterceptorsWrapper(
	  onRequest: (options, handler) async {
		bool hasConnection = await InternetConnectionChecker().hasConnection;
		if (!hasConnection) {
		  return handler.reject(
			DioError(
			  requestOptions: options,
			  error: 'No Internet Connection',
			  type: DioErrorType.connectionError,
			),
		  );
		}
		handler.next(options);
	  },
	  onResponse: (response, handler) async {

		handler.next(response);
	  },
	  onError: (error, handler) async {

		handler.next(error);
	  },
	);
  }
}
