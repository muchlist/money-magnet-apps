// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pocket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PocketResponseDTO _$$_PocketResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_PocketResponseDTO(
      data: json['data'] == null
          ? null
          : PocketDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_PocketResponseDTOToJson(
        _$_PocketResponseDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$_PocketDTO _$$_PocketDTOFromJson(Map<String, dynamic> json) => _$_PocketDTO(
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
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$_PocketDTOToJson(_$_PocketDTO instance) =>
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
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
