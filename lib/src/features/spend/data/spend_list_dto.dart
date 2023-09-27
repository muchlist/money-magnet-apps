import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/commons/data/metadata.dart';
import 'package:money_magnet/src/features/spend/data/spend_dto.dart';

part 'spend_list_dto.freezed.dart';
part 'spend_list_dto.g.dart';

@freezed
class SpendListResponseDTO with _$SpendListResponseDTO {
  const SpendListResponseDTO._();
  const factory SpendListResponseDTO({
    @JsonKey(name: 'data', defaultValue: []) required List<SpendDTO>? data,
    @JsonKey(name: 'metadata') required MetadataDTO metaData,
    @JsonKey(name: 'error') required String? error,
  }) = _SpendListResponseDTO;

  factory SpendListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SpendListResponseDTOFromJson(json);
}
