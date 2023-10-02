// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDTO _$$_LoginResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseDTO(
      data: json['data'] == null
          ? null
          : LoginDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDTOToJson(_$_LoginResponseDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$_LoginDTO _$$_LoginDTOFromJson(Map<String, dynamic> json) => _$_LoginDTO(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      accessTokenExpired: json['access_token_expired'] as int,
      refreshTokenExpired: json['refresh_token_expired'] as int,
    );

Map<String, dynamic> _$$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'roles': instance.roles,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'access_token_expired': instance.accessTokenExpired,
      'refresh_token_expired': instance.refreshTokenExpired,
    };

_$_RefreshResponseDTO _$$_RefreshResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshResponseDTO(
      data: json['data'] == null
          ? null
          : RefreshDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_RefreshResponseDTOToJson(
        _$_RefreshResponseDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$_RefreshDTO _$$_RefreshDTOFromJson(Map<String, dynamic> json) =>
    _$_RefreshDTO(
      accessToken: json['access_token'] as String,
      accessTokenExpired: json['access_token_expired'] as int,
    );

Map<String, dynamic> _$$_RefreshDTOToJson(_$_RefreshDTO instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'access_token_expired': instance.accessTokenExpired,
    };
