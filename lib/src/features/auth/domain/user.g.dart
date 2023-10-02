// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      accessTokenExpired: json['access_token_expired'] as int,
      refreshTokenExpired: json['refresh_token_expired'] as int,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'access_token_expired': instance.accessTokenExpired,
      'refresh_token_expired': instance.refreshTokenExpired,
      'roles': instance.roles,
    };
