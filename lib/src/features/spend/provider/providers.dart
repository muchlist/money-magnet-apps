import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/provider/providers.dart';
import 'package:money_magnet/src/features/spend/application/spend_notifier.dart';
import 'package:money_magnet/src/features/spend/application/spend_service.dart';
import 'package:money_magnet/src/features/spend/data/spend_remote_repo.dart';

final spendRemoteRepositoryProvider = Provider((ref) => SpendRemoteRepository(
      ref.watch(dioProvider),
    ));

final spendServiceProvider =
    Provider((ref) => SpendService(ref.watch(spendRemoteRepositoryProvider)));

final spendNotifierProvider = StateNotifierProvider<SpendNotifier, SpendState>(
  (ref) => SpendNotifier(
    ref.watch(spendServiceProvider),
  ),
);
