import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

// funion
// ptf
// flutter pub run build_runner watch --delete-conflicting-outputs

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.server([String? message]) = _Server;
  const factory AuthFailure.storage() = _Storage;
}
