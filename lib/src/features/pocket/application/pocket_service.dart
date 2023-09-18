import 'package:dartz/dartz.dart';
import 'package:money_magnet/src/commons/infrastructure/data_failure.dart';
import 'package:money_magnet/src/commons/infrastructure/network_exceptions.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_remote_interface.dart';
import 'package:money_magnet/src/features/pocket/domain/pocket.dart';

class PocketService {
  PocketService(this._remoteRepository);

  final IPocketRemoteRepository _remoteRepository;

  bool _hasNextPage = false;
  int _currentPage = 1;

  Future<Either<DataFailure, Pocket?>> getDetail(String pocketID) async {
    try {
      final pocketResponse = await _remoteRepository.get(pocketID);
      return pocketResponse.maybeWhen(
        withNewData: (data, _) async {
          return right(data.toDomain());
        },
        orElse: () async {
          return left(const DataFailure.server('gagal terkoneksi ke server'));
        },
      );
    } on RestApiException catch (e) {
      return left(DataFailure.server(e.message));
    } catch (e) {
      return left(DataFailure.server(e.toString()));
    }
  }

  Future<Either<DataFailure, List<Pocket>>> findPocket(int page) async {
    try {
      final resp = await _remoteRepository.find();
      return resp.maybeWhen(
        withNewData: (data, meta) async {
          _currentPage = meta?.currentPage ?? 0;
          _hasNextPage = (meta?.lastPage ?? 0) > (meta?.currentPage ?? 0);

          return right(data.map((e) => e.toDomain()).toList());
        },
        orElse: () async {
          return left(const DataFailure.server('gagal terkoneksi ke server'));
        },
      );
    } on RestApiException catch (e) {
      return left(DataFailure.server(e.message));
    } catch (e) {
      return left(DataFailure.server(e.toString()));
    }
  }

  Future<Either<DataFailure, List<Pocket>>> findNextPocket() async {
    return findPocket(_currentPage + 1);
  }

  bool hasNextPage() => _hasNextPage;
  int getCurrentPage() => _currentPage;

  Future<Either<DataFailure, Pocket?>> createPocket(
      String pocketName, String currency) async {
    try {
      final pocketResponse =
          await _remoteRepository.create(pocketName, currency);
      return pocketResponse.maybeWhen(
        withNewData: (data, _) async {
          return right(data.toDomain());
        },
        orElse: () async {
          return left(const DataFailure.server('gagal terkoneksi ke server'));
        },
      );
    } on RestApiException catch (e) {
      return left(DataFailure.server(e.message));
    } catch (e) {
      return left(DataFailure.server(e.toString()));
    }
  }

  Future<Either<DataFailure, Pocket?>> updatePocket(
      String pocketID, String pocketName, String currency) async {
    try {
      final pocketResponse =
          await _remoteRepository.update(pocketID, pocketName, currency);
      return pocketResponse.maybeWhen(
        withNewData: (data, _) async {
          return right(data.toDomain());
        },
        orElse: () async {
          return left(const DataFailure.server('gagal terkoneksi ke server'));
        },
      );
    } on RestApiException catch (e) {
      return left(DataFailure.server(e.message));
    } catch (e) {
      return left(DataFailure.server(e.toString()));
    }
  }
}
