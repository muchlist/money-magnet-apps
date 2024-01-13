import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pocketNameControllerProvider = Provider.autoDispose((ref) {
  final cc = TextEditingController();
  ref.onDispose(() => cc.dispose());
  return cc;
});
