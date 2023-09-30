import 'package:money_magnet/src/commons/infrastructure/remote_response.dart';
import 'package:money_magnet/src/features/spend/data/spend_dto.dart';

abstract class ISpendRemoteRepository {
  Future<RemoteResponse<SpendDTO>> get(String pocketID);

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
  });

  Future<RemoteResponse<SpendDTO>> create(SpendReqDTO payload);

  Future<RemoteResponse<SpendDTO>> update(String spendID, SpendReqDTO payload);

  Future<RemoteResponse<String>> delete(String spendID);
}
