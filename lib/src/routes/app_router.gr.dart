// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i9;
import 'package:money_magnet/src/features/auth/presentation/page/login_page.dart'
    as _i1;
import 'package:money_magnet/src/features/home/presentation/navigation_page.dart'
    as _i2;
import 'package:money_magnet/src/features/pocket/domain/pocket.dart' as _i8;
import 'package:money_magnet/src/features/pocket/presentation/page/pocket_add_page.dart'
    as _i3;
import 'package:money_magnet/src/features/pocket/presentation/page/pocket_detail_page.dart'
    as _i4;
import 'package:money_magnet/src/features/spend/presentation/page/add_spend_page.dart'
    as _i5;
import 'package:money_magnet/src/features/splash/presentation/splash_page.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigationPage(),
      );
    },
    PocketAddRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PocketAddPage(),
      );
    },
    PocketRoute.name: (routeData) {
      final args = routeData.argsAs<PocketRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PocketPage(
          args.pocketDetail,
          key: args.key,
        ),
      );
    },
    SpendAddRoute.name: (routeData) {
      final args = routeData.argsAs<SpendAddRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SpendAddPage(
          key: args.key,
          pocketID: args.pocketID,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i7.PageRouteInfo<void> {
  const NavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PocketAddPage]
class PocketAddRoute extends _i7.PageRouteInfo<void> {
  const PocketAddRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PocketAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'PocketAddRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PocketPage]
class PocketRoute extends _i7.PageRouteInfo<PocketRouteArgs> {
  PocketRoute({
    required _i8.Pocket pocketDetail,
    _i9.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PocketRoute.name,
          args: PocketRouteArgs(
            pocketDetail: pocketDetail,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PocketRoute';

  static const _i7.PageInfo<PocketRouteArgs> page =
      _i7.PageInfo<PocketRouteArgs>(name);
}

class PocketRouteArgs {
  const PocketRouteArgs({
    required this.pocketDetail,
    this.key,
  });

  final _i8.Pocket pocketDetail;

  final _i9.Key? key;

  @override
  String toString() {
    return 'PocketRouteArgs{pocketDetail: $pocketDetail, key: $key}';
  }
}

/// generated route for
/// [_i5.SpendAddPage]
class SpendAddRoute extends _i7.PageRouteInfo<SpendAddRouteArgs> {
  SpendAddRoute({
    _i9.Key? key,
    required String pocketID,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SpendAddRoute.name,
          args: SpendAddRouteArgs(
            key: key,
            pocketID: pocketID,
          ),
          initialChildren: children,
        );

  static const String name = 'SpendAddRoute';

  static const _i7.PageInfo<SpendAddRouteArgs> page =
      _i7.PageInfo<SpendAddRouteArgs>(name);
}

class SpendAddRouteArgs {
  const SpendAddRouteArgs({
    this.key,
    required this.pocketID,
  });

  final _i9.Key? key;

  final String pocketID;

  @override
  String toString() {
    return 'SpendAddRouteArgs{key: $key, pocketID: $pocketID}';
  }
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
