// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pocket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PocketResponseDTOImpl _$$PocketResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PocketResponseDTOImpl(
      data: json['data'] == null
          ? null
          : PocketDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$PocketResponseDTOImplToJson(
        _$PocketResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$PocketDTOImpl _$$PocketDTOImplFromJson(Map<String, dynamic> json) =>
    _$PocketDTOImpl(
      id: json['id'] as String,
      pocketName: json['pocket_name'] as String,
      balance: json['balance'] as int,
      currency: json['currency'] as String,
      icon: json['icon'] as int,
      level: json['level'] as int,
      ownerID: json['owner_id'] as String,
      editorID: (json['editor_id'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      watcherID: (json['watcher_id'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => PocketUserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$PocketDTOImplToJson(_$PocketDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pocket_name': instance.pocketName,
      'balance': instance.balance,
      'currency': instance.currency,
      'icon': instance.icon,
      'level': instance.level,
      'owner_id': instance.ownerID,
      'editor_id': instance.editorID,
      'watcher_id': instance.watcherID,
      'users': instance.users,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PocketUserDTOImpl _$$PocketUserDTOImplFromJson(Map<String, dynamic> json) =>
    _$PocketUserDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$PocketUserDTOImplToJson(_$PocketUserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
    };
