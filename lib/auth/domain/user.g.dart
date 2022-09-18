// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      token: json['token'] as String? ?? '',
      expired: json['expired'] as int,
      fcm: json['fcm'] as String,
      phone: json['phone'] as String,
      picture: json['picture'] as String,
      created: json['created'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'token': instance.token,
      'expired': instance.expired,
      'fcm': instance.fcm,
      'phone': instance.phone,
      'picture': instance.picture,
      'created': instance.created,
    };
