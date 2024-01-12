import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              page: HomeNavigationRoute.page,
              children: [
                AutoRoute(page: HomeScreenRoute.page),
                AutoRoute(page: MovieGeneratedRoute.page),
                AutoRoute(page: MovieDetailRoute.page),
                AutoRoute(page: MovieSeasonRoute.page),
                AutoRoute(page: MovieSeasonRoute.page),
                AutoRoute(page: HomeSearchRoute.page),
                AutoRoute(
                  page: VideoPlayerRoute.page,
                  meta: {'isHiddenBottomBar': true},
                ),
              ],
            ),
            AutoRoute(page: CategoryScreenRoute.page),
            AutoRoute(
              page: ProfileNavigationRoute.page,
              children: [
                AutoRoute(page: ProfileScreenRoute.page),
                AutoRoute(page: EmptyProfileRoute.page),
                AutoRoute(page: SelectedFilmRoute.page),
                AutoRoute(
                  page: SignUpRoute.page,
                  meta: {'isHiddenBottomBar': true},
                ),
                AutoRoute(
                  page: PhoneVerificationRoute.page,
                  meta: {'isHiddenBottomBar': true},
                )
              ],
            ),
          ],
        ),
      ];
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('Route poped :$route');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print('Route removed: $route');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('Route repaced from $oldRoute to $newRoute');
  }
}
