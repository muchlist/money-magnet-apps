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

  // Empty constructor with default values
  factory Pocket.empty() => const Pocket(
        id: '',
        pocketName: '',
        balance: 0,
        currency: '',
        icon: 0,
        level: 0,
        ownerID: '',
        editorID: [],
        watcherID: [],
        users: [],
        createdAt: '',
        updatedAt: '',
      );
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
