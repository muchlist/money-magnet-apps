// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDTO _$$_LoginResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseDTO(
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : LoginDTO.fromJson(json['data'] as Map<String, dynamic>),
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_LoginResponseDTOToJson(_$_LoginResponseDTO instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_$_LoginDTO _$$_LoginDTOFromJson(Map<String, dynamic> json) => _$_LoginDTO(
      accessToken: json['access_token'] as String? ?? '',
      expiredToken: json['expired_token'] as int? ?? 0,
      member: MemberDTO.fromJson(json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expired_token': instance.expiredToken,
      'member': instance.member,
    };

_$_MemberDTO _$$_MemberDTOFromJson(Map<String, dynamic> json) => _$_MemberDTO(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String? ?? '',
      picture: json['picture'] as String? ?? '',
      isVerified: json['is_verified'] as bool,
      createdAt: json['created_at'] as int,
      activationLink: json['activation_link'] as String? ?? '',
    );

Map<String, dynamic> _$$_MemberDTOToJson(_$_MemberDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'picture': instance.picture,
      'is_verified': instance.isVerified,
      'created_at': instance.createdAt,
      'activation_link': instance.activationLink,
    };
