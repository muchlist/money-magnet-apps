// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pocket_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PocketListResponseDTOImpl _$$PocketListResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PocketListResponseDTOImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PocketDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaData: MetadataDTO.fromJson(json['metadata'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$PocketListResponseDTOImplToJson(
        _$PocketListResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metaData,
      'error': instance.error,
    };
