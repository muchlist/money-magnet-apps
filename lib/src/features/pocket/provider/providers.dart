import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/features/pocket/application/pocket_notifier.dart';
import 'package:money_magnet/src/features/pocket/application/pocket_service.dart';
import 'package:money_magnet/src/features/pocket/data/pocket_remote_fake_repo.dart';

final pocketRemoteRepositoryProvider = Provider(
  // (ref) => PocketRemoteRepository(
  //   ref.watch(dioProvider),
  // ),
  (ref) => FakePocketRemoteRepository(),
);

final pocketServiceProvider =
    Provider((ref) => PocketService(ref.watch(pocketRemoteRepositoryProvider)));

final pocketNotifierProvider =
    StateNotifierProvider<PocketNotifier, PocketState>(
  (ref) => PocketNotifier(
    ref.watch(pocketServiceProvider),
  ),
);
