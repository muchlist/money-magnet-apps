import 'package:auto_route/auto_route.dart';
import 'package:money_magnet/splash/presentation/splash_page.dart';

@CustomAutoRouter(
    routes: [
      AutoRoute(page: SplashPage, path: '/splash', initial: true),
    ],
    replaceInRouteName: 'Page,Route',
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 400)
class $AppRouter {}
