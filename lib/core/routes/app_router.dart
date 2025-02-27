import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/dashboard.dart';
import 'package:hind_app/main.dart';

import '../../features/auth/presentation/pages/phone_verification_screen.dart';
import '../../features/auth/presentation/pages/sign_up_screen.dart';
import '../../features/category/presentation/pages/category_by_genre_screen.dart';
import '../../features/category/presentation/pages/category_screen.dart';
import '../../features/home/domain/entities/stream_entity.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/home/presentation/pages/movie_generated_screen.dart';
import '../../features/home/presentation/pages/video_player_screen.dart';
import '../../features/playback_details/domain/entities/playback_details_entity.dart';
import '../../features/playback_details/presentation/pages/playback_details_screen.dart';
import '../../features/playback_details/presentation/pages/playback_season_screen.dart';
import '../../features/search/presentation/pages/search_screen.dart';
import '../../features/user_profile/presentation/pages/authorized_profile_screen.dart';
import '../../features/user_profile/presentation/pages/edit_profile_screen.dart';
import '../../features/user_profile/presentation/pages/payment_screen.dart';
import '../../features/user_profile/presentation/pages/profile_navigation.dart';
import '../../features/user_profile/presentation/pages/selected_playback_screen.dart';
import '../../features/user_profile/presentation/pages/settigs_screen.dart';
import '../../features/user_profile/presentation/pages/subscription_screen.dart';
import '../../features/user_profile/presentation/pages/unauthorized_profile_screen.dart';

class AppRouter {
  AppRouter();
  final GoRouter router = GoRouter(
    initialLocation: '/home_screen',
    observers: <NavigatorObserver>[MyGoRouterObserver()],
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => Dashboard(
          navigationShell: navigationShell,
        ),
        branches: [
          // 🏠 Home branch
          StatefulShellBranch(
            observers: <NavigatorObserver>[MyGoRouterObserver()],
            routes: [
              GoRoute(
                path: '/home_screen',
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    path: 'movie_generated',
                    builder: (context, state) => MovieGeneratedScreen(
                      args: (state.extra as MovieGenScreenArgs),
                    ),
                  ),
                  GoRoute(
                    path: 'movie_detail',
                    builder: (context, state) => const MovieDetailScreen(),
                  ),
                  GoRoute(
                    path: 'playback_season',
                    builder: (context, state) => PlaybackSeasonScreen(
                      seasons: (state.extra as List<SeasonsDataEntity>),
                    ),
                  ),
                  GoRoute(
                    path: 'search',
                    builder: (context, state) => const SearchScreen(),
                  ),
                  GoRoute(
                    path: 'video_player',
                    builder: (context, state) => VideoPlayerScreen(
                      streamEntity: (state.extra as StreamEntity),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // 🎭 Category branch
          StatefulShellBranch(
            observers: <NavigatorObserver>[MyGoRouterObserver()],
            routes: [
              GoRoute(
                  path: '/category_screen',
                  builder: (context, state) => CategoryScreen(),
                  routes: [
                    GoRoute(
                      path: 'category_by_genre',
                      builder: (context, state) =>
                          const CategoryByGenreScreen(),
                    ),
                    GoRoute(
                      path: 'search',
                      builder: (context, state) => const SearchScreen(),
                    ),
                    GoRoute(
                      path: 'movie_detail_category',
                      builder: (context, state) => const MovieDetailScreen(),
                    ),
                  ]),
            ],
          ),

          // 👤 Profile branch
          StatefulShellBranch(
            observers: <NavigatorObserver>[MyGoRouterObserver()],
            routes: [
              GoRoute(
                path: '/profile_navigation',
                builder: (context, state) => ProfileNavigation(),
                routes: [
                  // Authorized profile
                  GoRoute(
                    path: 'auth_profile',
                    builder: (context, state) => AuthProfileScreen(),
                    routes: [
                      GoRoute(
                        path: 'edit_profile',
                        builder: (context, state) => const EditProfileScreen(),
                      ),
                      GoRoute(
                        path: 'selected_playback',
                        builder: (context, state) =>
                            const SelectedPlaybackScreen(),
                      ),
                      GoRoute(
                        path: 'settings',
                        builder: (context, state) => const SettingsScreen(),
                      ),
                      GoRoute(
                        path: 'subscription',
                        builder: (context, state) => const SubscriptionScreen(),
                      ),
                      GoRoute(
                        path: 'payment',
                        builder: (context, state) => const PaymentScreen(),
                      ),
                    ],
                  ),

                  // Unauthorized profile
                  GoRoute(
                    path: 'unauthorized_profile',
                    builder: (context, state) => UnathorizedProfileScreen(),
                    routes: [
                      GoRoute(
                        path: 'signup',
                        builder: (context, state) => const SignUpScreen(),
                      ),
                      GoRoute(
                        path: 'phone_verification',
                        builder: (context, state) => PhoneVerificationScreen(
                          phoneNumber: (state.extra as String),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class MyGoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      logger.goRouterObserver.didPush(route, previousRoute);

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      logger.goRouterObserver.didPop(route, previousRoute);

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      logger.goRouterObserver.didRemove(route, previousRoute);

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) =>
      logger.goRouterObserver
          .didReplace(newRoute: newRoute, oldRoute: oldRoute);

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) =>
      logger.goRouterObserver.didStartUserGesture(route, previousRoute);

  @override
  void didStopUserGesture() => logger.goRouterObserver.didStopUserGesture();
}
