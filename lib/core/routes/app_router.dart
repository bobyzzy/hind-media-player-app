import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashboardRoute.page,
          path: '/',
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              page: HomeNavigationRoute.page,
              path: 'home_navigation',
              children: [
                AutoRoute(page: HomeScreenRoute.page, path: 'home_screen'),
                AutoRoute(page: MovieGeneratedRoute.page),
                AutoRoute(page: MovieDetailRoute.page),
                AutoRoute(page: PlaybackSeasonRoute.page),
                AutoRoute(page: SearchRoute.page),
                AutoRoute(
                  page: VideoPlayerRoute.page,
                  meta: {'isHiddenBottomBar': true},
                ),
              ],
            ),
            AutoRoute(
              page: CategoryNavigationRoute.page,
              children: [
                AutoRoute(page: CategoryScreenRoute.page),
                AutoRoute(page: CategoryByGenreRoute.page),
                AutoRoute(page: SearchRoute.page),
                AutoRoute(page: MovieDetailRoute.page),
              ],
            ),
            AutoRoute(
              page: ProfileNavigation.page,
              children: [
                AutoRoute(
                  page: AuthorizedProfileNavigator.page,
                  children: [
                    AutoRoute(page: AuthProfileRoute.page, initial: true),
                    AutoRoute(
                      page: EditProfileRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    ),
                    AutoRoute(
                      page: SelectedPlaybackRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    ),
                    AutoRoute(
                      page: SettingsRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    ),
                    AutoRoute(
                      page: SubscriptionRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    ),
                    AutoRoute(
                      page: PaymentRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    )
                  ],
                ),
                AutoRoute(
                  page: UnathorizedProfileNavigator.page,
                  children: [
                    AutoRoute(
                        page: UnathorizedProfileRoute.page, initial: true),
                    AutoRoute(
                      page: SignUpRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    ),
                    AutoRoute(
                      page: PhoneVerificationRoute.page,
                      meta: {'isHiddenBottomBar': true},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ];
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print(
        'New route pushed: ${route.settings.name}, Previous route:${previousRoute?.settings.name}');
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
    print(
        'Route popped :$route, Previous route:${previousRoute?.settings.name}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print(
        'Route removed: $route , Previous route:${previousRoute?.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('Route replaced from $oldRoute to $newRoute');
  }
}
