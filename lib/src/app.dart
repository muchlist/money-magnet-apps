import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_magnet/src/features/auth/application/auth_notifier.dart';
import 'package:money_magnet/src/features/auth/provider/providers.dart';
import 'package:money_magnet/src/commons/theme/theme.dart';
import 'package:money_magnet/src/routes/app_router.dart';
import 'package:money_magnet/src/routes/app_router.gr.dart';
import 'package:money_magnet/src/commons/provider/providers.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  // Set notification bar tot transfarent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    // systemStatusBarContrastEnforced: true,
    statusBarColor: Colors.white,
  ));

  // init sembast database
  await ref.read(sembastprovider).init();

  // set interceptor to dioProvider
  ref.read(dioProvider)
    ..options = BaseOptions(
      validateStatus: (status) =>
          (status != null && status >= 200 && status <= 400) ||
          status == 404 ||
          status == 422,
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
    )
    ..interceptors.add(ref.watch(authInterceptorProvider))
    ..interceptors.add(
      TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
          printResponseMessage: true,
        ),
      ),
    );

  return unit;
});

class AppWidget extends ConsumerWidget {
  final appRouter = AppRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // run initializationProvider just for init dependency
    ref.listen(initializationProvider, (_, __) {});

    ref.listen<AuthState>(
      authNotifierProvider,
      (prev, state) {
        state.maybeMap(
          unauthenticated: (_) {
            appRouter.pushAndPopUntil(
              const LoginRoute(),
              predicate: (route) => false,
            );
          },
          authenticated: (_) {},
          failure: (_) {},
          orElse: () {},
        );
      },
    );

    return MaterialApp.router(
      title: 'Money Magnet',
      theme: setupThemeData(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
