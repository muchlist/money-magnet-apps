import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:money_magnet/auth/application/auth_notifier.dart';
import 'package:money_magnet/auth/shared/providers.dart';
import 'package:money_magnet/common/presentation/component/theme.dart';
import 'package:money_magnet/common/presentation/routes/app_router.gr.dart';
import 'package:money_magnet/common/shared/providers.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  // Set notification bar tot transfarent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));

  // init sembast database
  await ref.read(sembastprovider).init();

  // set interceptor to dioProvider
  ref.read(dioProvider)
    ..options = BaseOptions(
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
      connectTimeout: 10000, // 10 second
      receiveTimeout: 10000,
      sendTimeout: 10000,
    )
    ..interceptors.add(ref.read(oauth2InterceptorProvider))
    ..interceptors.add(dioLoggerInterceptor);

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
          orElse: () {
            appRouter.pushAndPopUntil(
              const LoginRoute(),
              predicate: (route) => false,
            );
          },
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
