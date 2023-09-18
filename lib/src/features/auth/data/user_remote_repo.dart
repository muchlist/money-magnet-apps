import 'package:dio/dio.dart';
import 'package:money_magnet/src/features/auth/data/user_login_dto.dart';
import 'package:money_magnet/src/config/remote_service.dart';
import 'package:money_magnet/src/commons/infrastructure/dio_extentions.dart';
import 'package:money_magnet/src/commons/infrastructure/dio_options.dart';
import 'package:money_magnet/src/commons/infrastructure/network_exceptions.dart';
import 'package:money_magnet/src/commons/infrastructure/remote_response.dart';

class UserRemoteRepository {
  final Dio _dio;

  UserRemoteRepository(this._dio);

  Future<RemoteResponse<LoginDTO>> login(String email, String password) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/user/login',
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
        return RemoteResponse.withNewData(data: data.data!);
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
    } on DioException catch (e) {
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
