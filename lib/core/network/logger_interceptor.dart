import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

String prettyJsonStr(Map<dynamic, dynamic> json) {
  final encoder = JsonEncoder.withIndent('  ', (data) => data.toString());
  return encoder.convert(json).replaceAll('\\', '');
}

void printWrapped(String text) {
  final pattern = RegExp('.{1,1024}'); // 1024 is the size of each chunk
  pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
}

class LoggerInterceptor extends Interceptor {
  final Function(DioException)? onRequestError;

  //For case response data is too large, don't need to show on log
  final bool Function(Response)? ignoreResponseDataLog;

  LoggerInterceptor({this.onRequestError, this.ignoreResponseDataLog});

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('\n<===================================TS_Weather Log=======================================>');
    printWrapped(
      prettyJsonStr({
        'from': 'Response',
        'Method': response.requestOptions.method,
        'Time': DateTime.now().toString(),
        'Url': '${response.requestOptions.uri}',
        'Headers': response.requestOptions.headers,
        'Body': response.requestOptions.data,
        'StatusCode': response.statusCode,
        if (ignoreResponseDataLog?.call(response) != false) 'responseData': response.data,
      }),
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('\n<===================================TS_Weather Log=======================================>');
    printWrapped(
      prettyJsonStr({
        'from': 'Error',
        'Method': err.requestOptions.method,
        'Time': DateTime.now().toString(),
        'Url': '${err.requestOptions.uri}',
        'Headers': err.requestOptions.headers,
        'Body': err.requestOptions.data,
        'Type': err.type,
        'Message': err.message,
        'StatusCode': err.response?.statusCode,
        'Error': err.error,
      }),
    );
    super.onError(err, handler);
  }
}
