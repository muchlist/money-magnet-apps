import 'package:freezed_annotation/freezed_annotation.dart';

part 'pocket.freezed.dart';

@freezed
class Pocket with _$Pocket {
  const Pocket._();
  const factory Pocket({
    required String id,
    required String pocketName,
    required int balance,
    required String currency,
    required int icon,
    required int level,
    required String ownerID,
    required List<String> editorID,
    required List<String> watcherID,
    required List<PocketUser> users,
    required String createdAt,
    required String updatedAt,
  }) = _Pocket;
}

@freezed
class PocketUser with _$PocketUser {
  const PocketUser._();
  const factory PocketUser({
    required String id,
    required String name,
    required String role,
  }) = _PocketUser;
}
