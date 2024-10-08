import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/features/auth/data/auth_interceptor.dart';
import 'package:money_magnet/src/features/auth/application/auth_notifier.dart';
import 'package:money_magnet/src/features/auth/data/secure_credential_interface.dart';
import 'package:money_magnet/src/features/auth/data/secure_credential_storage.dart';
import 'package:money_magnet/src/features/auth/data/user_local_repo.dart';
import 'package:money_magnet/src/features/auth/data/user_remote_repo.dart';
import 'package:money_magnet/src/commons/provider/providers.dart';
import 'package:money_magnet/src/features/auth/application/user_usecase.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio()
  ..interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printResponseMessage: true,
      ),
    ),
  ));

final authInterceptorProvider = Provider(
  (ref) => AuthInterceptor(
    ref.watch(userServiceProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

// use CredentialsStorage abstraction because we need to mock
final credentialStorageProvider = Provider<ICredentialStorage>(
  (ref) => SecureCredentialStorage(ref.watch(flutterSecureStorageProvider)),
);

final userLocalRepositoryProvider = Provider(
  (ref) => UserLocalRepository(
    ref.watch(sembastprovider),
  ),
);

final userRemoteRepositoryProvider = Provider(
  (ref) => UserRemoteRepository(
    ref.watch(dioForAuthProvider),
  ),
);

final userServiceProvider = Provider(
  (ref) => UserUsecase(
      ref.watch(userRemoteRepositoryProvider),
      ref.watch(userLocalRepositoryProvider),
      ref.watch(credentialStorageProvider)),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(userServiceProvider),
  ),
);
