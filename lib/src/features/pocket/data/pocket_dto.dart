import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/features/pocket/domain/pocket.dart';

part 'pocket_dto.freezed.dart';
part 'pocket_dto.g.dart';

@freezed
class PocketResponseDTO with _$PocketResponseDTO {
  const PocketResponseDTO._();
  const factory PocketResponseDTO({
    @JsonKey(name: 'data') required PocketDTO? data,
    @JsonKey(name: 'error') required String? error,
  }) = _PocketResponseDTO;

  factory PocketResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PocketResponseDTOFromJson(json);
}

@freezed
class PocketDTO with _$PocketDTO {
  const PocketDTO._();
  const factory PocketDTO({
    required String id,
    @JsonKey(name: 'pocket_name') required String pocketName,
    required int balance,
    required String currency,
    required int icon,
    required int level,
    @JsonKey(name: 'owner_id') required String ownerID,
    @JsonKey(defaultValue: [], name: "editor_id")
    required List<String> editorID,
    @JsonKey(defaultValue: [], name: "watcher_id")
    required List<String> watcherID,
    @JsonKey(defaultValue: []) required List<PocketUserDTO> users,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _PocketDTO;

  factory PocketDTO.fromJson(Map<String, dynamic> json) =>
      _$PocketDTOFromJson(json);

  Pocket toDomain() {
    List<PocketUser> pocketUsers = users.map((e) => e.toDomain()).toList();

    return Pocket(
      id: id,
      pocketName: pocketName,
      balance: balance,
      currency: currency,
      icon: icon,
      level: level,
      ownerID: ownerID,
      editorID: editorID,
      watcherID: watcherID,
      users: pocketUsers,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

@freezed
class PocketUserDTO with _$PocketUserDTO {
  const PocketUserDTO._();
  const factory PocketUserDTO({
    required String id,
    required String name,
    required String role,
  }) = _PocketUserDTO;

  factory PocketUserDTO.fromJson(Map<String, dynamic> json) =>
      _$PocketUserDTOFromJson(json);

  PocketUser toDomain() {
    return PocketUser(id: id, name: name, role: role);
  }
}
