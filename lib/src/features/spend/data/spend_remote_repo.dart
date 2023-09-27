import 'package:dio/dio.dart';
import 'package:money_magnet/src/commons/infrastructure/dio_extentions.dart';
import 'package:money_magnet/src/commons/infrastructure/dio_options.dart';

import 'package:money_magnet/src/config/remote_service.dart';
import 'package:money_magnet/src/commons/infrastructure/network_exceptions.dart';
import 'package:money_magnet/src/commons/infrastructure/remote_response.dart';
import 'package:money_magnet/src/features/spend/data/spend_dto.dart';
import 'package:money_magnet/src/features/spend/data/spend_list_dto.dart';
import 'package:money_magnet/src/features/spend/data/spend_remote_interface.dart';

class SpendRemoteRepository implements ISpendRemoteRepository {
  final Dio _dio;

  SpendRemoteRepository(this._dio);

  @override
  Future<RemoteResponse<SpendDTO>> get(String spendID) async {
    if (spendID.isEmpty) {
      throw RestApiException(0, "spendID cannot be empty");
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends/{$spendID}',
    );

    try {
      final response = await _dio.getUri(
        requestUri,
        options: customOption,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        try {
          final data = SpendResponseDTO.fromJson(response.data);
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
  Future<RemoteResponse<List<SpendDTO>>> find({
    int page = 1,
    int pageSize = 500,
    String sort = "-date",
    String pocketID = "",
    String categoryID = "",
    int? isIncome,
    List<int> types = const <int>[],
    String? dateStart,
    String? dateEnd,
  }) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends',
      {"page": "$page", "page_size": "$pageSize", "sort": sort}, // todo
    );

    try {
      final response = await _dio.getUri(
        requestUri,
        options: customOption,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendListResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(
          data: data.data!,
          meta: data.metaData,
        );
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        try {
          final data = SpendListResponseDTO.fromJson(response.data);
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
  Future<RemoteResponse<SpendDTO>> create(SpendReqDTO payload) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends',
    );

    try {
      final response = await _dio.postUri(
        requestUri,
        options: customOption,
        data: payload.toJson(),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        try {
          final data = SpendResponseDTO.fromJson(response.data);
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
  Future<RemoteResponse<SpendDTO>> update(
      String spendID, SpendReqDTO payload) async {
    if (spendID.isEmpty) {
      throw RestApiException(0, "spendID cannot be empty");
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends/$spendID',
    );

    try {
      final response = await _dio.postUri(requestUri,
          options: customOption, data: payload.toJson());

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendResponseDTO.fromJson(response.data);
        return RemoteResponse.withNewData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        try {
          final data = SpendResponseDTO.fromJson(response.data);
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
  Future<RemoteResponse<String>> delete(String spendID) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
