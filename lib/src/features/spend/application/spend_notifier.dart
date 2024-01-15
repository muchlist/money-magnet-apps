import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/commons/infrastructure/data_failure.dart';
import 'package:money_magnet/src/features/spend/application/spend_service.dart';
import 'package:money_magnet/src/features/spend/data/spend_dto.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';
import 'package:money_magnet/src/utils/date.dart';
import 'package:money_magnet/src/utils/strings.dart';

part 'spend_notifier.freezed.dart';

@freezed
class SpendState with _$SpendState {
  const SpendState._();

  const factory SpendState.initial(List<Spend> spends) = _Initial;

  const factory SpendState.loading(List<Spend> spends) = _Loading;

  const factory SpendState.success(
    List<Spend> spends, {
    required bool isNextPageAvailable,
  }) = _Success;

  const factory SpendState.failure(List<Spend> spends, DataFailure failure) =
      _Failure;

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

class SpendNotifier extends StateNotifier<SpendState> {
  final SpendService _service;
  SpendNotifier(this._service) : super(const SpendState.initial([]));

  @protected
  void resetState() {
    state = const SpendState.initial([]);
  }

  Future<void> getSpendList(String pocketID) async {
    state = SpendState.loading(state.spends);
    final failureOrSuccess = await _service.findSpend(1, pocketID);
    state = failureOrSuccess.fold(
      (l) {
        return SpendState.failure(state.spends, l);
      },
      (r) {
        return SpendState.success(
          r,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }

  Future<void> getNextSpendList(String pocketID) async {
    state = SpendState.loading(state.spends);
    final failureOrSuccess = await _service.findNextSpend(pocketID);
    state = failureOrSuccess.fold((l) {
      return SpendState.failure(state.spends, l);
    }, (r) {
      return SpendState.success(r, isNextPageAvailable: _service.hasNextPage());
    });
  }

  Future<void> createSpend(SpendReqDTO payload) async {
    state = SpendState.loading(state.spends);
    final failureOrSuccess = await _service.createSpend(payload);

    state = failureOrSuccess.fold(
      (l) {
        return SpendState.failure(state.spends, l);
      },
      (r) {
        final List<Spend> tempSpends = [];
        tempSpends.addAll(state.spends);
        tempSpends.add(r!.copyWith(userName: 'self'));
        tempSpends.sort(((a, b) => a.date.compareTo(b.date)));

        return SpendState.success(
          tempSpends,
          isNextPageAvailable: _service.hasNextPage(),
        );
      },
    );
  }
}
