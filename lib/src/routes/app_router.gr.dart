// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:money_magnet/src/features/auth/presentation/login_page.dart'
    as _i3;
import 'package:money_magnet/src/features/home/presentation/navigation_page.dart'
    as _i1;
import 'package:money_magnet/src/features/pocket/domain/pocket.dart' as _i7;
import 'package:money_magnet/src/features/pocket/presentation/pocket_add_page.dart'
    as _i4;
import 'package:money_magnet/src/features/pocket/presentation/pocket_spend_page.dart'
    as _i5;
import 'package:money_magnet/src/features/splash/presentation/splash_page.dart'
    as _i2;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NavigationPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    PocketAddRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PocketAddPage(),
      );
    },
    PocketRoute.name: (routeData) {
      final args = routeData.argsAs<PocketRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PocketPage(
          args.pocketDetail,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PocketAddPage]
class PocketAddRoute extends _i6.PageRouteInfo<void> {
  const PocketAddRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PocketAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'PocketAddRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PocketPage]
class PocketRoute extends _i6.PageRouteInfo<PocketRouteArgs> {
  PocketRoute({
    required _i7.Pocket pocketDetail,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          PocketRoute.name,
          args: PocketRouteArgs(
            pocketDetail: pocketDetail,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PocketRoute';

  static const _i6.PageInfo<PocketRouteArgs> page =
      _i6.PageInfo<PocketRouteArgs>(name);
}

class PocketRouteArgs {
  const PocketRouteArgs({
    required this.pocketDetail,
    this.key,
  });

  final _i7.Pocket pocketDetail;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PocketRouteArgs{pocketDetail: $pocketDetail, key: $key}';
  }
}
