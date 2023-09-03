import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:money_magnet/src/features/auth/data/credential_storage/credential_storage.dart';

class SecureCredentialStorage implements ICredentialStorage {
  final FlutterSecureStorage _storage;

  SecureCredentialStorage(this._storage);

  static const _key = 'bearer_token';

  String? _tokenCache;

  @override
  Future<String?> read() async {
    if (_tokenCache != null) {
      return _tokenCache;
    }
    String? token = await _storage.read(key: _key);
    _tokenCache = token;
    return token;
  }

  @override
  Future<void> save(String token) {
    _tokenCache = token;
    return _storage.write(key: _key, value: token);
  }

  @override
  Future<void> clear() {
    _tokenCache = null;
    return _storage.delete(key: _key);
  }
}
