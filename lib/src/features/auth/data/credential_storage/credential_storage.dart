abstract class ICredentialStorage {
  Future<String?> read();
  Future<void> save(String token);
  Future<void> clear();
}
