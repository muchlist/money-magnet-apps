import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spendNameControllerProvider = Provider.autoDispose((ref) {
  final cc = TextEditingController();
  ref.onDispose(() => cc.dispose());
  return cc;
});

final spendPriceControllerProvider = Provider.autoDispose((ref) {
  final cc = TextEditingController();
  ref.onDispose(() => cc.dispose());
  return cc;
});
