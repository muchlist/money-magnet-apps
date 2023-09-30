import 'package:dartz/dartz.dart';
import 'package:money_magnet/src/commons/infrastructure/data_failure.dart';
import 'package:money_magnet/src/commons/infrastructure/network_exceptions.dart';
import 'package:money_magnet/src/features/spend/data/spend_dto.dart';
import 'package:money_magnet/src/features/spend/data/spend_remote_interface.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';

class SpendService {
  SpendService(this._remoteRepository);

  final ISpendRemoteRepository _remoteRepository;

  bool _hasNextPage = false;
  int _currentPage = 1;

  Future<Either<DataFailure, Spend?>> getDetail(String spendID) async {
    try {
      final pocketResponse = await _remoteRepository.get(spendID);
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

  Future<Either<DataFailure, List<Spend>>> findSpend(
      int page, String pocketID) async {
    try {
      final resp = await _remoteRepository.find(pocketID: pocketID);
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

  Future<Either<DataFailure, List<Spend>>> findNextSpend(
      String pocketID) async {
    return findSpend(_currentPage + 1, pocketID);
  }

  bool hasNextPage() => _hasNextPage;
  int getCurrentPage() => _currentPage;

  Future<Either<DataFailure, Spend?>> createSpend(SpendReqDTO payload) async {
    try {
      final pocketResponse = await _remoteRepository.create(payload);
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

  Future<Either<DataFailure, Spend?>> updateSpend(
      String spendID, SpendReqDTO payload) async {
    try {
      final pocketResponse = await _remoteRepository.update(spendID, payload);
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
