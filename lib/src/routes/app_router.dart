import 'package:auto_route/auto_route.dart';
import 'package:money_magnet/src/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
        ),
        CustomRoute(
            page: LoginRoute.page,
            path: '/login',
            initial: true,
            transitionsBuilder: TransitionsBuilders.slideBottom,
            durationInMilliseconds: 400),
        // AutoRoute(
        //   page: LoginRoute.page,
        //   path: '/login',
        //   initial: true,
        // ),
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
