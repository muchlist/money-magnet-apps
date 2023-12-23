import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:money_magnet/src/features/auth/data/secure_credential_interface.dart';
import 'package:money_magnet/src/features/auth/data/user_local_repo.dart';
import 'package:money_magnet/src/features/auth/domain/auth_failure.dart';
import 'package:money_magnet/src/features/auth/domain/user.dart';
import 'package:money_magnet/src/features/auth/data/user_remote_repo.dart';
import 'package:money_magnet/src/commons/infrastructure/network_exceptions.dart';

class UserService {
  final UserRemoteRepository _remoteRepository;
  final UserLocalRepository _localRepository;
  final ICredentialStorage _credentialsStorage;
  UserService(
      this._remoteRepository, this._localRepository, this._credentialsStorage);

  Future<Either<AuthFailure, User?>> signIn(
      String email, String password) async {
    try {
      final userResponse = await _remoteRepository.login(email, password);

      return userResponse.maybeWhen(
        withNewData: (data, _) async {
          try {
            Future.wait([
              _credentialsStorage.saveAccessToken(data.accessToken),
              _credentialsStorage.saveRefreshToken(data.refreshToken),
              _credentialsStorage
                  .saveAccessTokenExpired(data.accessTokenExpired),
              _credentialsStorage
                  .saveRefreshTokenExpired(data.refreshTokenExpired)
            ]);
          } catch (e) {
            return left(const AuthFailure.server('credential storage fail'));
          }

          try {
            await _localRepository.upsertUserDetail(data.toDomain());
          } catch (e) {
            return left(const AuthFailure.storage());
          }

          return right(data.toDomain());
        },
        orElse: () async {
          return left(const AuthFailure.server('gagal terkoneksi ke server'));
        },
      );
    } on RestApiException catch (e) {
      return left(AuthFailure.server(e.message));
    } catch (e) {
      return left(AuthFailure.server(e.toString()));
    }
  }

  Future<Either<AuthFailure, String>> renewToken(String refreshToken) async {
    try {
      final userResponse = await _remoteRepository.refresh(refreshToken);

      return userResponse.maybeWhen(
        withNewData: (data, _) async {
          try {
            Future.wait([
              _credentialsStorage.saveAccessToken(data.accessToken),
              _credentialsStorage
                  .saveAccessTokenExpired(data.accessTokenExpired)
            ]);
            // await _credentialsStorage.saveAccessToken(data.accessToken);
            // await _credentialsStorage
            //     .saveAccessTokenExpired(data.accessTokenExpired);
          } catch (e) {
            return left(const AuthFailure.server('credential storage fail'));
          }

          return right(data.accessToken);
        },
        orElse: () async {
          return left(const AuthFailure.server('gagal terkoneksi ke server'));
        },
      );
    } on RestApiException catch (e) {
      return left(AuthFailure.server(e.message));
    } catch (e) {
      return left(AuthFailure.server(e.toString()));
    }
  }

  Future<User?> getUserDetail() async {
    try {
      return await _localRepository.getUserDetail();
    } catch (e) {
      return null;
    }
  }

  Future<String?> getToken() async {
    try {
      final token = await _credentialsStorage.read();
      return token;
    } on PlatformException {
      return null;
    }
  }

  Future<String?> getRefreshToken() async {
    try {
      final token = await _credentialsStorage.readRefresh();
      return token;
    } on PlatformException {
      return null;
    }
  }

  Future<void> clearToken() async {
    try {
      await _credentialsStorage.clearAccessToken();
    } on PlatformException {
      return;
    }
  }

  Future<bool> isSignedIn() async {
    try {
      final token = await _credentialsStorage.read();
      if (token == null) {
        return false;
      }
      final expiredAt = await _credentialsStorage.readExpired();
      final nowEpoch = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (expiredAt != null && expiredAt >= nowEpoch) {
        return true;
      }
    } on PlatformException {
      return false;
    }
    return false;
  }

  Future<bool> isCanRefresh() async {
    try {
      final expiredAt = await _credentialsStorage.readRefreshExpired();
      if (expiredAt == null) {
        return false;
      }

      final nowEpoch = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (expiredAt < nowEpoch) {
        return true;
      }
    } on PlatformException {
      return false;
    }
    return false;
  }
}
