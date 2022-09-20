import 'package:dio/dio.dart';
import 'package:money_magnet/auth/infrastructure/user_login_dto.dart';
import 'package:money_magnet/common/config/remote_service.dart';
import 'package:money_magnet/common/infrastructure/dio_extentions.dart';
import 'package:money_magnet/common/infrastructure/dio_options.dart';
import 'package:money_magnet/common/infrastructure/network_exceptions.dart';
import 'package:money_magnet/common/infrastructure/remote_response.dart';

class UserRemoteService {
  final Dio _dio;

  UserRemoteService(this._dio);

  Future<RemoteResponse<LoginDTO>> login(String email, String password) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/api/user/login',
    );

    try {
      final response = await _dio.postUri(
        requestUri,
        data: {
          'email': email,
          'password': password,
        },
        options: customOption,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = LoginResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from user
        try {
          final data = LoginResponseDTO.fromJson(response.data);
          throw RestApiException(response.statusCode, data.error);
        } on FormatException catch (_) {
          throw RestApiException(response.statusCode, response.statusMessage);
        }
      } else {
        // Server error
        throw RestApiException(response.statusCode, response.statusMessage);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode, e.message);
      } else {
        rethrow;
      }
    } on FormatException catch (e) {
      throw RestApiException(0, "parsing:${e.message}");
    } catch (_) {
      rethrow;
    }
  }
}
