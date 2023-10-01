// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpendResponseDTO _$$_SpendResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_SpendResponseDTO(
      data: json['data'] == null
          ? null
          : SpendDTO.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_SpendResponseDTOToJson(_$_SpendResponseDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$_SpendDTO _$$_SpendDTOFromJson(Map<String, dynamic> json) => _$_SpendDTO(
      id: json['id'] as String,
      userID: json['user_id'] as String,
      userName: json['user_name'] as String,
      pocketID: json['pocket_id'] as String,
      pocketName: json['pocket_name'] as String,
      categoryID: json['category_id'] as String,
      categoryName: json['category_name'] as String,
      categoryIcon: json['category_icon'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      balanceSnapshoot: json['balance_snapshoot'] as int,
      isIncome: json['is_income'] as bool,
      type: json['type'] as int,
      date: json['date'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$$_SpendDTOToJson(_$_SpendDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userID,
      'user_name': instance.userName,
      'pocket_id': instance.pocketID,
      'pocket_name': instance.pocketName,
      'category_id': instance.categoryID,
      'category_name': instance.categoryName,
      'category_icon': instance.categoryIcon,
      'name': instance.name,
      'price': instance.price,
      'balance_snapshoot': instance.balanceSnapshoot,
      'is_income': instance.isIncome,
      'type': instance.type,
      'date': instance.date,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'version': instance.version,
    };

_$_SpendReqDTO _$$_SpendReqDTOFromJson(Map<String, dynamic> json) =>
    _$_SpendReqDTO(
      pocketID: json['pocket_id'] as String,
      categoryID: json['category_id'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      isIncome: json['is_income'] as bool,
      type: json['type'] as int,
      date: json['date'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$$_SpendReqDTOToJson(_$_SpendReqDTO instance) =>
    <String, dynamic>{
      'pocket_id': instance.pocketID,
      'category_id': instance.categoryID,
      'name': instance.name,
      'price': instance.price,
      'is_income': instance.isIncome,
      'type': instance.type,
      'date': instance.date,
      'version': instance.version,
    };
