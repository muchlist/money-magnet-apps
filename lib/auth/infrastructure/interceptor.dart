import 'package:dio/dio.dart';
import 'package:money_magnet/auth/application/auth_notifier.dart';
import 'package:money_magnet/auth/infrastructure/user_repository.dart';

class OAuth2Interceptor extends Interceptor {
  final UserRepository _repository;
  final AuthNotifier _authNotifier;
  final Dio _dio;

  OAuth2Interceptor(this._repository, this._authNotifier, this._dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _repository.getToken();
    final modifiedOptions = options
      ..headers.addAll(
        token == null ? {} : {'Authorization': 'Bearer $token'},
      );
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    if (errorResponse != null && errorResponse.statusCode == 401) {
      // final credentials = await _repository.getToken();
      // credentials != null && credentials.canRefresh
      //     ? await _authenticator.refresh(credentials)
      //     : await _authenticator.clearCredentialsStorage();

      // trigger to login screen
      await _authNotifier.checkAndUpdateAuthStatus();

      // TODO : use refreshed token if can refresh
      final refreshCredentials = await _repository.getToken();
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
