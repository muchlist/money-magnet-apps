import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';

part 'spend_dto.freezed.dart';
part 'spend_dto.g.dart';

@freezed
class SpendResponseDTO with _$SpendResponseDTO {
  const SpendResponseDTO._();
  const factory SpendResponseDTO({
    @JsonKey(name: 'data') required SpendDTO? data,
    @JsonKey(name: 'error') required String? error,
  }) = _SpendResponseDTO;

  factory SpendResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SpendResponseDTOFromJson(json);
}

@freezed
class SpendDTO with _$SpendDTO {
  const SpendDTO._();
  const factory SpendDTO({
    required String id,
    @JsonKey(name: 'user_id') required String userID,
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'pocket_id') required String pocketID,
    @JsonKey(name: 'pocket_name') required String pocketName,
    @JsonKey(name: 'category_id') required String categoryID,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'category_icon') required int categoryIcon,
    required String name,
    required int price,
    @JsonKey(name: 'balance_snapshoot') required int balanceSnapshoot,
    @JsonKey(name: 'is_income') required bool isIncome,
    required int type,
    required String date,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required int version,
  }) = _SpendDTO;

  factory SpendDTO.fromJson(Map<String, dynamic> json) =>
      _$SpendDTOFromJson(json);

  Spend toDomain() {
    return Spend(
        id: id,
        userID: userID,
        userName: userName,
        pocketID: pocketID,
        pocketName: pocketName,
        categoryID: categoryID,
        categoryName: categoryName,
        categoryIcon: categoryIcon,
        name: name,
        price: price,
        balanceSnapshoot: balanceSnapshoot,
        isIncome: isIncome,
        type: type,
        date: DateTime.parse(date),
        createdAt: DateTime.parse(createdAt),
        updatedAt: DateTime.parse(updatedAt),
        version: version);
  }
}

@freezed
class SpendReqDTO with _$SpendReqDTO {
  const SpendReqDTO._();
  const factory SpendReqDTO({
    @JsonKey(name: 'pocket_id') required String pocketID,
    @JsonKey(name: 'category_id') required String categoryID,
    required String name,
    required int price,
    @JsonKey(name: 'is_income') required bool isIncome,
    required int type,
    required String date,
  }) = _SpendReqDTO;

  factory SpendReqDTO.fromJson(Map<String, dynamic> json) =>
      _$SpendReqDTOFromJson(json);
}
