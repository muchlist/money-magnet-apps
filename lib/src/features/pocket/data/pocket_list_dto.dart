import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_dto.dart';

part 'pocket_list_dto.freezed.dart';
part 'pocket_list_dto.g.dart';

@freezed
class PocketListResponseDTO with _$PocketListResponseDTO {
  const PocketListResponseDTO._();
  const factory PocketListResponseDTO({
    @JsonKey(name: 'data', defaultValue: []) required List<PocketDTO>? data,
    @JsonKey(name: 'metadata') required MetadataDTO metaData,
    @JsonKey(name: 'error') required String? error,
  }) = _PocketListResponseDTO;

  factory PocketListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PocketListResponseDTOFromJson(json);
}

@freezed
class MetadataDTO with _$MetadataDTO {
  const MetadataDTO._();
  const factory MetadataDTO({
    @JsonKey(name: 'current_page', defaultValue: 0) required int currentPage,
    @JsonKey(name: 'first_page', defaultValue: 0) required int firstPage,
    @JsonKey(name: 'last_page', defaultValue: 0) required int lastPage,
    @JsonKey(name: 'page_size', defaultValue: 0) required int pageSize,
    @JsonKey(name: 'total_records', defaultValue: 0) required int totalRecords,
  }) = _MetadataDTO;

  factory MetadataDTO.fromJson(Map<String, dynamic> json) =>
      _$MetadataDTOFromJson(json);
}
