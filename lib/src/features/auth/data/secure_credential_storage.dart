import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:money_magnet/src/features/auth/data/secure_credential_interface.dart';

class SecureCredentialStorage implements ICredentialStorage {
  final FlutterSecureStorage _storage;

  SecureCredentialStorage(this._storage);

  static const _key = 'access_token';
  static const _refreshKey = 'refresh_token';

  String? _tokenCache;
  String? _refreshTokenCache;

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
  Future<String?> readRefresh() async {
    if (_refreshTokenCache != null) {
      return _refreshTokenCache;
    }
    String? refreshToken = await _storage.read(key: _refreshKey);
    _refreshTokenCache = refreshToken;
    return refreshToken;
  }

  @override
  Future<void> saveAccessToken(String token) {
    _tokenCache = token;
    return _storage.write(key: _key, value: token);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) {
    _refreshTokenCache = refreshToken;
    return _storage.write(key: _refreshKey, value: refreshToken);
  }

  @override
  Future<void> clearAccessToken() {
    _tokenCache = null;
    return _storage.delete(key: _key);
  }

  @override
  Future<void> clearRefreshToken() {
    _refreshTokenCache = null;
    return _storage.delete(key: _refreshKey);
  }
}
