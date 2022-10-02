// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../auth/presentation/login_page.dart' as _i1;
import '../../../home/presentation/navigation_page.dart' as _i3;
import '../../../pocket/presentation/pocket_page.dart' as _i4;
import '../../../splash/presentation/splash_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigationRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.NavigationPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PocketRoute.name: (routeData) {
      final args = routeData.argsAs<PocketRouteArgs>();
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.PocketPage(
          args.pocketName,
          key: args.key,
        ),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/navigation',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        _i5.RouteConfig(
          NavigationRoute.name,
          path: '/navigation',
        ),
        _i5.RouteConfig(
          PocketRoute.name,
          path: '/pocket',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.NavigationPage]
class NavigationRoute extends _i5.PageRouteInfo<void> {
  const NavigationRoute()
      : super(
          NavigationRoute.name,
          path: '/navigation',
        );

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i4.PocketPage]
class PocketRoute extends _i5.PageRouteInfo<PocketRouteArgs> {
  PocketRoute({
    required String pocketName,
    _i6.Key? key,
  }) : super(
          PocketRoute.name,
          path: '/pocket',
          args: PocketRouteArgs(
            pocketName: pocketName,
            key: key,
          ),
        );

  static const String name = 'PocketRoute';
}

class PocketRouteArgs {
  const PocketRouteArgs({
    required this.pocketName,
    this.key,
  });

  final String pocketName;

  final _i6.Key? key;

  @override
  String toString() {
    return 'PocketRouteArgs{pocketName: $pocketName, key: $key}';
  }
}
