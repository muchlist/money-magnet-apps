import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailControllerProvider = Provider.autoDispose((ref) {
  final cc = TextEditingController();
  ref.onDispose(() => cc.dispose());
  return cc;
});

final passwordControllerProvider = Provider.autoDispose((ref) {
  final cc = TextEditingController();
  ref.onDispose(() => cc.dispose());
  return cc;
});

final loginFormKeyProvider = Provider((ref) => GlobalKey<FormState>());
