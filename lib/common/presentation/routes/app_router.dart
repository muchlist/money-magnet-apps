import 'package:auto_route/auto_route.dart';
import 'package:money_magnet/auth/presentation/login_page.dart';
import 'package:money_magnet/home/presentation/navigation_page.dart';
import 'package:money_magnet/splash/presentation/splash_page.dart';

@CustomAutoRouter(
    routes: [
      AutoRoute(
        page: LoginPage,
        path: '/login',
        // initial: true,
      ),
      AutoRoute(
        page: SplashPage,
        path: '/splash',
      ),
      AutoRoute(
        page: NavigationPage,
        path: '/navigation',
        initial: true,
      ),
    ],
    replaceInRouteName: 'Page,Route',
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 400)
class $AppRouter {}
