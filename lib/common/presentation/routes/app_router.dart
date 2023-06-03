import 'package:auto_route/auto_route.dart';
import 'package:money_magnet/common/presentation/routes/app_router.gr.dart';

// @CustomAutoRouter(
//     routes: [
//       AutoRoute(
//         page: LoginPage,
//         path: '/login',
//         initial: true,
//       ),
//       AutoRoute(
//         page: SplashPage,
//         path: '/splash',
//       ),
//       AutoRoute(
//         page: NavigationPage,
//         path: '/navigation',
//       ),
//       AutoRoute(
//         page: PocketPage,
//         path: '/pocket',
//       ),
//     ],
//     replaceInRouteName: 'Page,Route',
//     transitionsBuilder: TransitionsBuilders.fadeIn,
//     durationInMilliseconds: 400)
// class $AppRouter {}

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
        ),
        AutoRoute(
          page: NavigationRoute.page,
          path: '/navigation',
          initial: true,
        ),
        AutoRoute(
          page: PocketRoute.page,
          path: '/pocket',
        ),
      ];
}
