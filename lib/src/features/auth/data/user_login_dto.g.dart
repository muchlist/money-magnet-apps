// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_dto.dart';

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
    );

Map<String, dynamic> _$$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'roles': instance.roles,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
