// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:money_magnet/auth/presentation/login_page.dart' as _i4;
import 'package:money_magnet/home/presentation/navigation_page.dart' as _i2;
import 'package:money_magnet/pocket/presentation/pocket_page.dart' as _i1;
import 'package:money_magnet/splash/presentation/splash_page.dart' as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    PocketRoute.name: (routeData) {
      final args = routeData.argsAs<PocketRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PocketPage(
          args.pocketName,
          key: args.key,
        ),
      );
    },
    NavigationRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigationPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.PocketPage]
class PocketRoute extends _i5.PageRouteInfo<PocketRouteArgs> {
  PocketRoute({
    required String pocketName,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          PocketRoute.name,
          args: PocketRouteArgs(
            pocketName: pocketName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PocketRoute';

  static const _i5.PageInfo<PocketRouteArgs> page =
      _i5.PageInfo<PocketRouteArgs>(name);
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

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i5.PageRouteInfo<void> {
  const NavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
