// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:hind_app/home.dart' as _i3;
import 'package:hind_app/presentation/pages/about_actor_screen.dart' as _i1;
import 'package:hind_app/presentation/pages/category_screen.dart' as _i2;
import 'package:hind_app/presentation/pages/home_navigation_screen.dart' as _i4;
import 'package:hind_app/presentation/pages/home_screen.dart' as _i5;
import 'package:hind_app/presentation/pages/movie_detail_screen.dart' as _i6;
import 'package:hind_app/presentation/pages/movie_generated_screen.dart' as _i7;
import 'package:hind_app/presentation/pages/movie_seasons_screen.dart' as _i8;
import 'package:hind_app/presentation/pages/profile_screen.dart' as _i9;
import 'package:hind_app/presentation/pages/video_player_screen.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AboutActorRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutActorScreen(),
      );
    },
    CategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryScreenRouteArgs>(
          orElse: () => const CategoryScreenRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CategoryScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Home(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeNavigationScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MovieDetailScreen(),
      );
    },
    MovieGeneratedRoute.name: (routeData) {
      final args = routeData.argsAs<MovieGeneratedRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MovieGeneratedScreen(
          key: args.key,
          appbarTitle: args.appbarTitle,
          itemCount: args.itemCount,
        ),
      );
    },
    MovieSeasonRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MovieSeasonScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileScreen(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.VideoPlayerScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutActorScreen]
class AboutActorRoute extends _i11.PageRouteInfo<void> {
  const AboutActorRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AboutActorRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutActorRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryScreen]
class CategoryScreenRoute extends _i11.PageRouteInfo<CategoryScreenRouteArgs> {
  CategoryScreenRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          CategoryScreenRoute.name,
          args: CategoryScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoryScreenRoute';

  static const _i11.PageInfo<CategoryScreenRouteArgs> page =
      _i11.PageInfo<CategoryScreenRouteArgs>(name);
}

class CategoryScreenRouteArgs {
  const CategoryScreenRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'CategoryScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.Home]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeNavigationScreen]
class HomeNavigationRoute extends _i11.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i11.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MovieDetailScreen]
class MovieDetailRoute extends _i11.PageRouteInfo<void> {
  const MovieDetailRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MovieDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MovieGeneratedScreen]
class MovieGeneratedRoute extends _i11.PageRouteInfo<MovieGeneratedRouteArgs> {
  MovieGeneratedRoute({
    _i12.Key? key,
    required String appbarTitle,
    required int itemCount,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          MovieGeneratedRoute.name,
          args: MovieGeneratedRouteArgs(
            key: key,
            appbarTitle: appbarTitle,
            itemCount: itemCount,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieGeneratedRoute';

  static const _i11.PageInfo<MovieGeneratedRouteArgs> page =
      _i11.PageInfo<MovieGeneratedRouteArgs>(name);
}

class MovieGeneratedRouteArgs {
  const MovieGeneratedRouteArgs({
    this.key,
    required this.appbarTitle,
    required this.itemCount,
  });

  final _i12.Key? key;

  final String appbarTitle;

  final int itemCount;

  @override
  String toString() {
    return 'MovieGeneratedRouteArgs{key: $key, appbarTitle: $appbarTitle, itemCount: $itemCount}';
  }
}

/// generated route for
/// [_i8.MovieSeasonScreen]
class MovieSeasonRoute extends _i11.PageRouteInfo<void> {
  const MovieSeasonRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MovieSeasonRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieSeasonRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileScreenRoute extends _i11.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.VideoPlayerScreen]
class VideoPlayerRoute extends _i11.PageRouteInfo<void> {
  const VideoPlayerRoute({List<_i11.PageRouteInfo>? children})
      : super(
          VideoPlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
