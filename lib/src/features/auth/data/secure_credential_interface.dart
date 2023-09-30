abstract class ICredentialStorage {
  Future<String?> read();
  Future<String?> readRefresh();
  Future<void> saveAccessToken(String token);
  Future<void> saveRefreshToken(String refreshtoken);
  Future<void> clearAccessToken();
  Future<void> clearRefreshToken();
}
