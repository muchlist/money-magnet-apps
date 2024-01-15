import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/data/page_state.dart';
import 'package:money_magnet/src/commons/infrastructure/sembast.dart';

final sembastprovider = Provider((ref) => SembastDatabase());

final dioProvider = Provider((ref) => Dio());

final pageStateNotifierProvider =
    StateNotifierProvider<PageStateNotifier, PageState>(
  (ref) => PageStateNotifier(),
);
