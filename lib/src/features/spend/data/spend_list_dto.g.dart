// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpendListResponseDTO _$$_SpendListResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_SpendListResponseDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SpendDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaData: MetadataDTO.fromJson(json['metadata'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_SpendListResponseDTOToJson(
        _$_SpendListResponseDTO instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metaData,
      'error': instance.error,
    };
