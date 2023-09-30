import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';
part 'metadata.g.dart';

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
