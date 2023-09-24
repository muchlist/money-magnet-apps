import 'package:dio/dio.dart';
import 'package:money_magnet/src/commons/infrastructure/dio_extentions.dart';
import 'package:money_magnet/src/commons/infrastructure/dio_options.dart';

import 'package:money_magnet/src/config/remote_service.dart';
import 'package:money_magnet/src/commons/infrastructure/network_exceptions.dart';
import 'package:money_magnet/src/commons/infrastructure/remote_response.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_dto.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_list_dto.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_remote_interface.dart';

class PocketRemoteRepository implements IPocketRemoteRepository {
  final Dio _dio;

  PocketRemoteRepository(this._dio);

  @override
  Future<RemoteResponse<PocketDTO>> get(String pocketID) async {
    if (pocketID.isEmpty) {
      throw RestApiException(0, "pocketID cannot be empty");
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets/{$pocketID}',
    );

    try {
      final response = await _dio.getUri(
        requestUri,
        options: customOption,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        try {
          final data = PocketResponseDTO.fromJson(response.data);
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

  @override
  Future<RemoteResponse<List<PocketDTO>>> find({
    int page = 1,
    int pageSize = 50,
    String sort = "pocket_name",
  }) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets',
      {"page": "$page", "page_size": "$pageSize", "sort": sort},
    );

    try {
      final response = await _dio.getUri(
        requestUri,
        options: customOption,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketListResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(
          data: data.data!,
          meta: data.metaData,
        );
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        try {
          final data = PocketListResponseDTO.fromJson(response.data);
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

  @override
  Future<RemoteResponse<PocketDTO>> create(
      String pocketName, String currency, int icon) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets',
    );

    try {
      final response = await _dio.postUri(
        requestUri,
        options: customOption,
        data: {"pocket_name": pocketName, "currency": currency, "icon": icon},
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        try {
          final data = PocketResponseDTO.fromJson(response.data);
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

  @override
  Future<RemoteResponse<PocketDTO>> update(
    String pocketID,
    String pocketName,
    String currency,
  ) async {
    if (pocketID.isEmpty) {
      throw RestApiException(0, "pocketID cannot be empty");
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets/$pocketID',
    );

    try {
      final response = await _dio.postUri(requestUri,
          options: customOption,
          data: {"pocket_name": pocketName, "currency": currency});

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        try {
          final data = PocketResponseDTO.fromJson(response.data);
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
