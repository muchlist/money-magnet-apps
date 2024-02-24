import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/provider/providers.dart';
import 'package:money_magnet/src/features/spend/application/spend_create_notifier.dart';
import 'package:money_magnet/src/features/spend/application/spend_list_notifier.dart';
import 'package:money_magnet/src/features/spend/application/spend_service.dart';
import 'package:money_magnet/src/features/spend/data/spend_remote_repo.dart';

final spendRemoteRepositoryProvider = Provider((ref) => SpendRemoteRepository(
      ref.watch(dioProvider),
    ));

final spendServiceProvider =
    Provider((ref) => SpendService(ref.watch(spendRemoteRepositoryProvider)));

final spendListNotifierProvider = StateNotifierProvider.autoDispose
    .family<SpendListNotifier, SpendListState, String>(
  (ref, pocketID) {
    // id just for create copy state per pocketID

    // keep alive for 60 second when state closes
    final link = ref.keepAlive();

    final timer = Timer(const Duration(seconds: 60), () {
      link.close();
    });

    ref.onDispose(() {
      timer.cancel();
    });

    return SpendListNotifier(
      ref.watch(spendServiceProvider),
    );
  },
);

final spendCreateNotifierProvider =
    StateNotifierProvider.autoDispose<SpendCreateNotifier, SpendCreateState>(
  (ref) => SpendCreateNotifier(
    ref.watch(spendServiceProvider),
  ),
);
