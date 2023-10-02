import 'package:dio/dio.dart';
import 'package:money_magnet/src/features/auth/application/auth_notifier.dart';
import 'package:money_magnet/src/features/auth/application/user_service.dart';

class AuthInterceptor extends Interceptor {
  final UserService _service;
  final AuthNotifier _authNotifier;
  final Dio _dio;

  AuthInterceptor(this._service, this._authNotifier, this._dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _service.getToken();
    final modifiedOptions = options
      ..headers.addAll(
        token == null ? {} : {'Authorization': 'Bearer $token'},
      );
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    if (errorResponse != null && errorResponse.statusCode == 401) {
      // check if refresh token not expired
      // if expired send event unauthentication so user popped to login screen
      await _authNotifier.checkAndUpdateAuthStatus();

      // get refresh token
      final refreshToken = await _service.getRefreshToken();

      if (refreshToken != null) {
        final failureOrSuccess = await _service.renewToken(refreshToken);
        var newAccessToken = '';
        failureOrSuccess.fold(
          (l) {/* do nothing */},
          (r) {
            newAccessToken = r;
          },
        );

        errorResponse.requestOptions.headers['Authorization'] =
            'Bearer $newAccessToken';

        final result = await _dio.fetch(errorResponse.requestOptions);

        handler.resolve(result);
      }
    } else {
      handler.next(err);
    }
  }
}
