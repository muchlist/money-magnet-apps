import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/auth/domain/user.dart';

part 'user_login_dto.freezed.dart';
part 'user_login_dto.g.dart';

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
        roles: roles);
  }
}
