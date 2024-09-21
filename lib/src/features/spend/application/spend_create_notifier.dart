import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet/src/commons/infrastructure/data_failure.dart';
import 'package:money_magnet/src/features/spend/application/spend_service.dart';
import 'package:money_magnet/src/features/spend/data/spend_dto.dart';
import 'package:money_magnet/src/features/spend/domain/spend.dart';

part 'spend_create_notifier.freezed.dart';

@freezed
class SpendCreateState with _$SpendCreateState {
  const SpendCreateState._();

  const factory SpendCreateState.initial() = _Initial;

  const factory SpendCreateState.loading() = _Loading;

  const factory SpendCreateState.success(Spend spend) = _Success;

  const factory SpendCreateState.failure(DataFailure failure) = _Failure;
}

class SpendCreateNotifier extends StateNotifier<SpendCreateState> {
  final SpendService _service;
  SpendCreateNotifier(this._service) : super(const SpendCreateState.initial());

  Future<void> createSpend(SpendReqDTO payload) async {
    state = const SpendCreateState.loading();
    final failureOrSuccess = await _service.createSpend(payload);

    state = failureOrSuccess.fold(
      (l) {
        return SpendCreateState.failure(l);
      },
      (r) {
        return SpendCreateState.success(r!.copyWith(userName: 'self'));
      },
    );
    return;
  }
}
