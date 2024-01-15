// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpendListResponseDTOImpl _$$SpendListResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SpendListResponseDTOImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SpendDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaData: MetadataDTO.fromJson(json['metadata'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$SpendListResponseDTOImplToJson(
        _$SpendListResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metaData,
      'error': instance.error,
    };
