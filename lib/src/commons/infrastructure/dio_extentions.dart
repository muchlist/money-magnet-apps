import 'package:dio/dio.dart';

extension DioErrorX on DioException {
  bool get isNoConnectionError {
    // return type == DioErrorType.other && error is SocketException;
    return type == DioExceptionType.connectionError;
  }
}
