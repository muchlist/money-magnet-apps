import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/commons/infrastructure/data_failure.dart';
import 'package:money_magnet/src/features/pocket/application/pocket_service.dart';
import 'package:money_magnet/src/features/pocket/domain/pocket.dart';
import 'package:money_magnet/src/utils/strings.dart';

part 'pocket_notifier.freezed.dart';

@freezed
class PocketState with _$PocketState {
  const PocketState._();

  const factory PocketState.initial(List<Pocket> pockets) = _Initial;

  const factory PocketState.loading(List<Pocket> pockets, String balanceInfo) =
      _Loading;

  const factory PocketState.success(
    List<Pocket> pockets,
    String balanceInfo, {
    required bool isNextPageAvailable,
  }) = _Success;

  const factory PocketState.failure(List<Pocket> pockets, DataFailure failure) =
      _Failure;
}

class PocketNotifier extends StateNotifier<PocketState> {
  final PocketService _service;
  PocketNotifier(this._service) : super(const PocketState.initial([]));

  @protected
  void resetState() {
    state = const PocketState.initial([]);
  }

  Future<void> getPocketList() async {
    state = PocketState.loading(state.pockets, _getTotalBalance(state.pockets));
    final failureOrSuccess = await _service.findPocket(1);
    state = failureOrSuccess.fold(
      (l) {
        return PocketState.failure(state.pockets, l);
      },
      (r) {
        final totalBalance = _getTotalBalance(r);
        return PocketState.success(
          r,
          totalBalance,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }

  Future<void> getNextPocketList() async {
    state = PocketState.loading(state.pockets, _getTotalBalance(state.pockets));
    final failureOrSuccess = await _service.findNextPocket();
    state = failureOrSuccess.fold((l) {
      return PocketState.failure(state.pockets, l);
    }, (r) {
      final totalBalance = _getTotalBalance(r);
      return PocketState.success(r, totalBalance,
          isNextPageAvailable: _service.hasNextPage());
    });
  }

  String _getTotalBalance(List<Pocket> pockets) {
    int balance = 0;
    for (var element in pockets) {
      balance = balance + element.balance;
    }
    return balance.toCurrencyString();
  }

  Future<void> createPocket(
      String pocketName, String currency, int icon) async {
    state = PocketState.loading(state.pockets, _getTotalBalance(state.pockets));
    final failureOrSuccess =
        await _service.createPocket(pocketName, currency, icon);

    state = failureOrSuccess.fold(
      (l) {
        return PocketState.failure(state.pockets, l);
      },
      (r) {
        final List<Pocket> tempPockets = [];
        tempPockets.addAll(state.pockets);
        tempPockets.add(r!);
        tempPockets.sort(((a, b) => a.pocketName.compareTo(b.pocketName)));

        final totalBalance = _getTotalBalance(
            state.pockets); // new pocket is 0, so sum pocket before

        return PocketState.success(
          tempPockets,
          totalBalance,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }
}
