import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/auth/domain/auth_failure.dart';
import 'package:money_magnet/auth/infrastructure/user_repository.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final UserRepository _repository;

  AuthNotifier(this._repository) : super(const AuthState.initial());

  Future<void> checkAndUpdateAuthStatus() async {
    state = (await _repository.isSignedIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  Future<void> signIn(String email, String password) async {
    state = const AuthState.loading();
    final failureOrSuccess = await _repository.signIn(email, password);
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.authenticated(),
    );
  }

  void toggleLoading() {
    state.maybeWhen(
      loading: () {
        state = const AuthState.initial();
      },
      orElse: () {
        state = const AuthState.loading();
      },
    );
  }
}
