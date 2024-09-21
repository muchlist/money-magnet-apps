import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/commons/infrastructure/data_failure.dart';
import 'package:money_magnet/src/features/spend/application/spend_service.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';
import 'package:money_magnet/src/utils/date.dart';
import 'package:money_magnet/src/utils/strings.dart';

part 'spend_list_notifier.freezed.dart';

@freezed
class SpendListState with _$SpendListState {
  const SpendListState._();

  const factory SpendListState.initial(List<Spend> spends) = _Initial;

  const factory SpendListState.loading(List<Spend> spends) = _Loading;

  const factory SpendListState.success(
    List<Spend> spends, {
    required bool isNextPageAvailable,
  }) = _Success;

  const factory SpendListState.failure(
      List<Spend> spends, DataFailure failure) = _Failure;

  List<Spend> todaySpendItems() {
    return spends.where((element) => element.date.isToday()).toList();
  }

  List<Spend> notTodaySpendItems() {
    return spends.where((element) => !element.date.isToday()).toList();
  }

  String todaySpendMoney() {
    int total = 0;
    for (var element in todaySpendItems()) {
      total += element.price;
    }

    return total.toCurrencyString();
  }
}

class SpendListNotifier extends StateNotifier<SpendListState> {
  final SpendService _service;
  SpendListNotifier(this._service) : super(const SpendListState.initial([]));

  @protected
  void resetState() {
    state = const SpendListState.initial([]);
  }

  Future<void> getSpendList(String pocketID) async {
    state = SpendListState.loading(state.spends);
    final failureOrSuccess = await _service.findSpend(1, pocketID);
    state = failureOrSuccess.fold(
      (l) {
        return SpendListState.failure(state.spends, l);
      },
      (r) {
        return SpendListState.success(
          r,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }

  Future<void> getNextSpendList(String pocketID) async {
    state = SpendListState.loading(state.spends);
    final failureOrSuccess = await _service.findNextSpend(pocketID);
    state = failureOrSuccess.fold((l) {
      return SpendListState.failure(state.spends, l);
    }, (r) {
      return SpendListState.success(r,
          isNextPageAvailable: _service.hasNextPage());
    });
  }

  void addSpend(Spend payload) {
    final List<Spend> tempSpends = [];
    tempSpends.addAll(state.spends);
    tempSpends.add(payload);
    tempSpends.sort(((a, b) => a.date.compareTo(b.date)));

    state = SpendListState.success(
      tempSpends,
      isNextPageAvailable: _service.hasNextPage(),
    );
  }
}
