import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend.freezed.dart';

@freezed
class Spend with _$Spend {
  const Spend._();
  const factory Spend({
    required String id,
    required String userID,
    required String userName,
    required String pocketID,
    required String pocketName,
    required String categoryID,
    required String categoryName,
    required int categoryIcon,
    required String name,
    required int price,
    required int balanceSnapshoot,
    required bool isIncome,
    required int type,
    required DateTime date,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int version,
  }) = _Spend;
}
