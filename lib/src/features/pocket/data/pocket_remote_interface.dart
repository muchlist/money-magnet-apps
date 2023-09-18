import 'package:money_magnet/src/commons/infrastructure/remote_response.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_dto.dart';

abstract class IPocketRemoteRepository {
  Future<RemoteResponse<PocketDTO>> get(String pocketID);

  Future<RemoteResponse<List<PocketDTO>>> find({
    int page = 1,
    int pageSize = 50,
    String sort = "pocket_name",
  });

  Future<RemoteResponse<PocketDTO>> create(
    String pocketName,
    String currency,
  );

  Future<RemoteResponse<PocketDTO>> update(
    String pocketID,
    String pocketName,
    String currency,
  );
}
