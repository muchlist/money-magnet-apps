abstract class ICredentialStorage {
  Future<String?> read();
  Future<String?> readRefresh();
  Future<int?> readExpired();
  Future<int?> readRefreshExpired();
  Future<void> saveAccessToken(String token);
  Future<void> saveRefreshToken(String refreshtoken);
  Future<void> saveAccessTokenExpired(int expired);
  Future<void> saveRefreshTokenExpired(int expired);
  Future<void> clearAccessToken();
  Future<void> clearRefreshToken();
}
