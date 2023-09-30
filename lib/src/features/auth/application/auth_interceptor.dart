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
      // todo: sharpening this logic.
      // if 401, refresh token to backend, then resolve with refreshed token
      // if fail, return to login page

      await _service.clearToken();
      await _authNotifier.checkAndUpdateAuthStatus();

      final refreshCredentials = await _service.getToken();
      if (refreshCredentials != null) {
        handler.resolve(
          await _dio.fetch(
            errorResponse.requestOptions
              ..headers['Authorization'] = 'Bearer $refreshCredentials',
          ),
        );
      }
    } else {
      handler.next(err);
    }
  }
}
