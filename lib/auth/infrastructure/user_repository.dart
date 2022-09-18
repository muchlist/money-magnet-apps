import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:money_magnet/auth/domain/auth_failure.dart';
import 'package:money_magnet/auth/domain/user.dart';
import 'package:money_magnet/auth/infrastructure/credential_storage/credential_storage.dart';
import 'package:money_magnet/auth/infrastructure/user_local_service.dart';
import 'package:money_magnet/auth/infrastructure/user_remote_service.dart';
import 'package:money_magnet/common/infrastructure/network_exceptions.dart';

class UserRepository {
  final UserRemoteService _remoteService;
  final UserLocalService _localService;
  final CredentialStorage _credentialsStorage;
  UserRepository(
      this._remoteService, this._localService, this._credentialsStorage);

  Future<Either<AuthFailure, User?>> signIn(
      String email, String password) async {
    try {
      final userResponse = await _remoteService.login(email, password);

      return userResponse.maybeWhen(
        withNewData: (data) async {
          try {
            await _credentialsStorage.save(data.accessToken);
          } catch (e) {
            return left(const AuthFailure.server('credential storage fail'));
          }

          try {
            await _localService.upsertUserDetail(data.toDomain());
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

  Future<User?> getUserDetail() async {
    try {
      return await _localService.getUserDetail();
    } catch (e) {
      log(e.toString());
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

  Future<bool> isSignedIn() => getToken().then((token) => token != null);
}
