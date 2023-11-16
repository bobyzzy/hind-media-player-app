import 'package:auto_route/auto_route.dart';

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
                AutoRoute(page: AboutActorRoute.page),
                AutoRoute(page: MovieSeasonRoute.page),
                AutoRoute(page: VideoPlayerRoute.page),
              ],
            ),
            AutoRoute(page: CategoryScreenRoute.page),
            AutoRoute(page: ProfileScreenRoute.page),
          ],
        ),
      ];
}
