import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/features/auth/domain/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class LoginResponseDTO with _$LoginResponseDTO {
  const LoginResponseDTO._();
  const factory LoginResponseDTO({
    @JsonKey(name: 'data') required LoginDTO? data,
    @JsonKey(name: 'error') required String? error,
  }) = _LoginResponseDTO;

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);
}

@freezed
class LoginDTO with _$LoginDTO {
  const LoginDTO._();
  const factory LoginDTO({
    required String id,
    required String email,
    required String name,
    @JsonKey(defaultValue: []) required List<String> roles,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'access_token_expired') required int accessTokenExpired,
    @JsonKey(name: 'refresh_token_expired') required int refreshTokenExpired,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);

  User toDomain() {
    return User(
      id: id,
      email: email,
      name: name,
      accessToken: accessToken,
      refreshToken: refreshToken,
      accessTokenExpired: accessTokenExpired,
      refreshTokenExpired: refreshTokenExpired,
      roles: roles,
    );
  }
}

@freezed
class RefreshResponseDTO with _$RefreshResponseDTO {
  const RefreshResponseDTO._();
  const factory RefreshResponseDTO({
    @JsonKey(name: 'data') required RefreshDTO? data,
    @JsonKey(name: 'error') required String? error,
  }) = _RefreshResponseDTO;

  factory RefreshResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshResponseDTOFromJson(json);
}

@freezed
class RefreshDTO with _$RefreshDTO {
  const RefreshDTO._();
  const factory RefreshDTO({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'access_token_expired') required int accessTokenExpired,
  }) = _RefreshDTO;

  factory RefreshDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshDTOFromJson(json);
}
