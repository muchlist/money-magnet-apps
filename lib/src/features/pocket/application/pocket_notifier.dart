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

  const factory PocketState.initial(
    List<Pocket> pockets,
    Pocket detail,
  ) = _Initial;

  const factory PocketState.loading(
    List<Pocket> pockets,
    Pocket detail,
    String balanceInfo,
  ) = _Loading;

  const factory PocketState.success(
    List<Pocket> pockets,
    Pocket detail,
    String balanceInfo, {
    required bool isNextPageAvailable,
  }) = _Success;

  const factory PocketState.failure(
    List<Pocket> pockets,
    Pocket detail,
    DataFailure failure,
  ) = _Failure;

  String getBalanceByPocketIDFromList(String pocketID) {
    var pocket =
        pockets.firstWhere((e) => e.id == pocketID, orElse: Pocket.empty);
    return pocket.balance.toString();
  }
}

class PocketNotifier extends StateNotifier<PocketState> {
  final PocketService _service;
  PocketNotifier(this._service)
      : super(
          PocketState.initial(
            [],
            Pocket.empty(),
          ),
        );

  @protected
  void resetState() {
    state = PocketState.initial([], Pocket.empty());
  }

  Future<void> getPocketList() async {
    state = PocketState.loading(
        state.pockets, state.detail, _getTotalBalance(state.pockets));
    final failureOrSuccess = await _service.findPocket(1);
    state = failureOrSuccess.fold(
      (l) {
        return PocketState.failure(state.pockets, state.detail, l);
      },
      (r) {
        final totalBalance = _getTotalBalance(r);
        return PocketState.success(
          r,
          state.detail,
          totalBalance,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }

  Future<void> getPocketDetail(String pocketID) async {
    state = PocketState.loading(
      state.pockets,
      state.detail,
      _getTotalBalance(state.pockets),
    );

    final failureOrSuccess = await _service.getDetail(pocketID);
    state = failureOrSuccess.fold(
      (l) {
        return PocketState.failure(state.pockets, state.detail, l);
      },
      (r) {
        var modifiedPockets = state.pockets.map((e) {
          if (e.id == pocketID && r != null) {
            return r;
          } else {
            return e;
          }
        }).toList();

        modifiedPockets.sort(((a, b) => a.pocketName.compareTo(b.pocketName)));

        final totalBalance = _getTotalBalance(modifiedPockets);
        return PocketState.success(
          modifiedPockets,
          r ?? state.detail,
          totalBalance,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }

  Future<void> getNextPocketList() async {
    state = PocketState.loading(
        state.pockets, state.detail, _getTotalBalance(state.pockets));
    final failureOrSuccess = await _service.findNextPocket();
    state = failureOrSuccess.fold((l) {
      return PocketState.failure(state.pockets, state.detail, l);
    }, (r) {
      final totalBalance = _getTotalBalance(r);
      return PocketState.success(r, state.detail, totalBalance,
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

  String getBalanceByPocketIDFromList(String pocketID) {
    var pocket = state.pockets.firstWhere((e) => e.id == pocketID);
    return pocket.balance.toString();
  }

  Future<void> createPocket(
      String pocketName, String currency, int icon) async {
    state = PocketState.loading(
        state.pockets, state.detail, _getTotalBalance(state.pockets));
    final failureOrSuccess =
        await _service.createPocket(pocketName, currency, icon);

    state = failureOrSuccess.fold(
      (l) {
        return PocketState.failure(state.pockets, state.detail, l);
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
          state.detail,
          totalBalance,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }
}
