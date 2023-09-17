import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/commons/infrastructure/sembast.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

final sembastprovider = Provider((ref) => SembastDatabase());

final dioProvider = Provider((ref) => Dio()
  ..interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printResponseMessage: true,
      ),
    ),
  ));
