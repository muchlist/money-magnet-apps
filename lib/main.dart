import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/app.dart';

void main() {
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
