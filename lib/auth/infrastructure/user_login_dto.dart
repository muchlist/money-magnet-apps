import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/auth/domain/user.dart';

part 'user_login_dto.freezed.dart';
part 'user_login_dto.g.dart';

@freezed
class LoginResponseDTO with _$LoginResponseDTO {
  const LoginResponseDTO._();
  const factory LoginResponseDTO({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required LoginDTO? data,
    @JsonKey(name: 'errors') required Map<String, String>? errors,
  }) = _LoginResponseDTO;

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);
}

@freezed
class LoginDTO with _$LoginDTO {
  const LoginDTO._();
  const factory LoginDTO({
    @JsonKey(name: 'access_token', defaultValue: "")
        required String accessToken,
    @JsonKey(name: 'expired_token', defaultValue: 0) required int expiredToken,
    required MemberDTO member,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);

  User toDomain() {
    return User(
      id: member.id,
      email: member.email,
      name: member.name,
      phone: member.phone,
      picture: member.picture,
      token: accessToken,
      expired: expiredToken,
      fcm: '',
      created: member.createdAt,
    );
  }
}

@freezed
class MemberDTO with _$MemberDTO {
  const MemberDTO._();
  const factory MemberDTO({
    @JsonKey(defaultValue: "") required String id,
    required String name,
    required String email,
    @JsonKey(defaultValue: "") required String phone,
    @JsonKey(defaultValue: "") required String picture,
    @JsonKey(name: 'is_verified') required bool isVerified,
    @JsonKey(name: 'created_at') required int createdAt,
    @JsonKey(name: 'activation_link', defaultValue: '')
        required String activationLink,
  }) = _MemberDTO;

  factory MemberDTO.fromJson(Map<String, dynamic> json) =>
      _$MemberDTOFromJson(json);
}
