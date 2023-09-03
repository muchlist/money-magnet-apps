import 'package:money_magnet/src/commons/infrastructure/remote_response.dart';
import 'package:money_magnet/src/dummy_data/pocket.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_dto.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_remote_repo.dart';

class FakePocketRemoteRepository implements IPocketRemoteRepository {
  @override
  Future<RemoteResponse<List<PocketDTO>>> find(
      {int page = 1, int pageSize = 50, String sort = "pocket_name"}) {
    Future.delayed(const Duration(milliseconds: 3000));
    return Future.value(const RemoteResponse.withNewData(data: dummyPockets));
  }

  @override
  Future<RemoteResponse<PocketDTO>> get(String pocketID) {
    Future.delayed(const Duration(milliseconds: 3000));
    return Future.value(RemoteResponse.withNewData(data: dummyPockets[0]));
  }
}
