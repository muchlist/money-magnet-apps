// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseDTOImpl _$$LoginResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseDTOImpl(
      data: json['data'] == null
          ? null
          : LoginDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$LoginResponseDTOImplToJson(
        _$LoginResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$LoginDTOImpl _$$LoginDTOImplFromJson(Map<String, dynamic> json) =>
    _$LoginDTOImpl(
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

Map<String, dynamic> _$$LoginDTOImplToJson(_$LoginDTOImpl instance) =>
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

_$RefreshResponseDTOImpl _$$RefreshResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshResponseDTOImpl(
      data: json['data'] == null
          ? null
          : RefreshDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$RefreshResponseDTOImplToJson(
        _$RefreshResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$RefreshDTOImpl _$$RefreshDTOImplFromJson(Map<String, dynamic> json) =>
    _$RefreshDTOImpl(
      accessToken: json['access_token'] as String,
      accessTokenExpired: json['access_token_expired'] as int,
    );

Map<String, dynamic> _$$RefreshDTOImplToJson(_$RefreshDTOImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'access_token_expired': instance.accessTokenExpired,
    };
