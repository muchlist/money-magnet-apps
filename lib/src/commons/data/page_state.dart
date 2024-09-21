import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'page_state.freezed.dart';

@freezed
class PageState with _$PageState {
  const PageState._();
  const factory PageState({
    required bool isHomePageNeedUpdate,
    required bool isDetailPageNeedUpdate,
  }) = _PageState;
}

class PageStateNotifier extends StateNotifier<PageState> {
  var logger = Logger(
    level: Level.all,
    printer: PrettyPrinter(),
  );

  PageStateNotifier()
      : super(
          const PageState(
            isDetailPageNeedUpdate: false,
            isHomePageNeedUpdate: false,
          ),
        );

  void setIsHomePageNeedUpdate(bool value) {
    state = state.copyWith(isHomePageNeedUpdate: value);
    return;
  }

  void setIsDetailPageNeedUpdate(bool value) {
    state = state.copyWith(isDetailPageNeedUpdate: value);
    return;
  }
}
