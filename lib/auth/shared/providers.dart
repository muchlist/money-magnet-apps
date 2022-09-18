import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/auth/application/auth_notifier.dart';
import 'package:money_magnet/auth/infrastructure/credential_storage/credential_storage.dart';
import 'package:money_magnet/auth/infrastructure/credential_storage/secure_credential_storage.dart';
import 'package:money_magnet/auth/infrastructure/interceptor.dart';
import 'package:money_magnet/auth/infrastructure/user_local_service.dart';
import 'package:money_magnet/auth/infrastructure/user_remote_service.dart';
import 'package:money_magnet/auth/infrastructure/user_repository.dart';
import 'package:money_magnet/common/shared/providers.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio());

final oauth2InterceptorProvider = Provider(
  (ref) => OAuth2Interceptor(
    ref.watch(userRepositoryProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

// use CredentialsStorage abstraction because we need to mock
final credentialStorageProvider = Provider<CredentialStorage>(
  (ref) => SecureCredentialStorage(ref.watch(flutterSecureStorageProvider)),
);

final userLocalServiceProvider = Provider(
  (ref) => UserLocalService(
    ref.watch(sembastprovider),
  ),
);

final userRemoteServiceProvider = Provider(
  (ref) => UserRemoteService(
    ref.watch(dioForAuthProvider),
  ),
);

final userRepositoryProvider = Provider(
  (ref) => UserRepository(
      ref.watch(userRemoteServiceProvider),
      ref.watch(userLocalServiceProvider),
      ref.watch(credentialStorageProvider)),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(userRepositoryProvider),
  ),
);
