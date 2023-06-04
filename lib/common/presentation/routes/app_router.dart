import 'package:auto_route/auto_route.dart';
import 'package:money_magnet/common/presentation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
          initial: true,
        ),
        AutoRoute(
          page: NavigationRoute.page,
          path: '/navigation',
        ),
        AutoRoute(
          page: PocketRoute.page,
          path: '/pocket',
        ),
      ];
}
