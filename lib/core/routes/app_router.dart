import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: Dashboard.page,
          path: '/',
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              page: HomeNavigationRoute.page,
              children: [
                AutoRoute(page: HomeScreenRoute.page),
                CustomRoute(
                    page: MovieGeneratedRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideBottom),
                CustomRoute(
                  page: MovieDetailRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: MovieSeasonRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: MovieSeasonRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: SearchRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                AutoRoute(
                  page: VideoPlayerRoute.page,
                  meta: {'isHiddenBottomBar': true},
                ),
              ],
            ),
            AutoRoute(
              page: CategoryNavigationRoute.page,
              children: [
                CustomRoute(
                  page: CategoryScreenRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: CategoryByGenreRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: SearchRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: MovieDetailRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileNavigationRoute.page,
              children: [
                CustomRoute(
                  page: ProfileScreenRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: EmptyProfileRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: SelectedFilmRoute.page,
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: SignUpRoute.page,
                  meta: {'isHiddenBottomBar': true},
                  transitionsBuilder: TransitionsBuilders.slideBottom,
                ),
                CustomRoute(
                  page: PhoneVerificationRoute.page,
                  meta: {'isHiddenBottomBar': true},
                  transitionsBuilder: TransitionsBuilders.slideBottom,
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
