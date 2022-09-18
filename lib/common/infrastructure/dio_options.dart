import 'package:dio/dio.dart';

final customOption = Options(
  validateStatus: (status) =>
      (status != null && status >= 200 && status <= 400) ||
      status == 401 ||
      status == 404 ||
      status == 422,
  responseType: ResponseType.json,
  receiveTimeout: 10000,
  sendTimeout: 10000,
);
