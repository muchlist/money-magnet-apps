import 'package:money_magnet/src/features/auth/domain/user.dart';
import 'package:money_magnet/src/commons/infrastructure/sembast.dart';
import 'package:sembast/sembast.dart';

class UserLocalRepository {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('userProfile');

  UserLocalRepository(this._sembastDatabase);

  Future<void> upsertUserDetail(User user) async {
    await _store.record('profile').put(
          _sembastDatabase.instance,
          user.toSembast(),
        );
  }

  Future<User?> getUserDetail() async {
    final record = _store.record('profile');
    final recordSnapshot = await record.getSnapshot(_sembastDatabase.instance);
    if (recordSnapshot == null) {
      return null;
    }
    return User.fromSembast(recordSnapshot);
  }
}
