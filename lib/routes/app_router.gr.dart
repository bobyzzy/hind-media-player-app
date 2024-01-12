// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/cupertino.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:hind_app/features/auth/presentation/pages/phone_verification_screen.dart'
    as _i10;
import 'package:hind_app/features/auth/presentation/pages/sign_up_screen.dart'
    as _i14;
import 'package:hind_app/features/category/presentation/pages/category_screen.dart'
    as _i1;
import 'package:hind_app/features/home/presentation/pages/home_navigation_screen.dart'
    as _i4;
import 'package:hind_app/features/home/presentation/pages/home_screen.dart'
    as _i5;
import 'package:hind_app/features/home/presentation/pages/home_search_screen.dart'
    as _i6;
import 'package:hind_app/features/home/presentation/pages/movie_detail_screen.dart'
    as _i7;
import 'package:hind_app/features/home/presentation/pages/movie_generated_screen.dart'
    as _i8;
import 'package:hind_app/features/home/presentation/pages/movie_season_screen.dart'
    as _i9;
import 'package:hind_app/features/user_profile/presentation/pages/empty_profile_screen.dart'
    as _i2;
import 'package:hind_app/features/user_profile/presentation/pages/profile_screen.dart'
    as _i12;
import 'package:hind_app/features/user_profile/presentation/pages/profile_screen_navigation.dart'
    as _i11;
import 'package:hind_app/home.dart' as _i3;
import 'package:hind_app/features/user_profile/presentation/pages/selected_films_screen.dart' as _i13;
import 'package:hind_app/features/home/presentation/pages/video_player_screen.dart' as _i15;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    CategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryScreenRouteArgs>(
          orElse: () => const CategoryScreenRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CategoryScreen(key: args.key),
      );
    },
    EmptyProfileRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyProfileScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Home(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeNavigationScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    HomeSearchRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeSearchScreen(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MovieDetailScreen(),
      );
    },
    MovieGeneratedRoute.name: (routeData) {
      final args = routeData.argsAs<MovieGeneratedRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.MovieGeneratedScreen(
          key: args.key,
          appbarTitle: args.appbarTitle,
          itemCount: args.itemCount,
        ),
      );
    },
    MovieSeasonRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MovieSeasonScreen(),
      );
    },
    PhoneVerificationRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PhoneVerificationScreen(),
      );
    },
    ProfileNavigationRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileNavigationScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfileScreen(),
      );
    },
    SelectedFilmRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SelectedFilmScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SignUpScreen(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.VideoPlayerScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoryScreen]
class CategoryScreenRoute extends _i16.PageRouteInfo<CategoryScreenRouteArgs> {
  CategoryScreenRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CategoryScreenRoute.name,
          args: CategoryScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoryScreenRoute';

  static const _i16.PageInfo<CategoryScreenRouteArgs> page =
      _i16.PageInfo<CategoryScreenRouteArgs>(name);
}

class CategoryScreenRouteArgs {
  const CategoryScreenRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'CategoryScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyProfileScreen]
class EmptyProfileRoute extends _i16.PageRouteInfo<void> {
  const EmptyProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          EmptyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyProfileRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Home]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeNavigationScreen]
class HomeNavigationRoute extends _i16.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i16.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeSearchScreen]
class HomeSearchRoute extends _i16.PageRouteInfo<void> {
  const HomeSearchRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeSearchRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MovieDetailScreen]
class MovieDetailRoute extends _i16.PageRouteInfo<void> {
  const MovieDetailRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MovieDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MovieGeneratedScreen]
class MovieGeneratedRoute extends _i16.PageRouteInfo<MovieGeneratedRouteArgs> {
  MovieGeneratedRoute({
    _i18.Key? key,
    required String appbarTitle,
    required int itemCount,
    List<_i16.PageRouteInfo>? children,
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

  static const _i16.PageInfo<MovieGeneratedRouteArgs> page =
      _i16.PageInfo<MovieGeneratedRouteArgs>(name);
}

class MovieGeneratedRouteArgs {
  const MovieGeneratedRouteArgs({
    this.key,
    required this.appbarTitle,
    required this.itemCount,
  });

  final _i18.Key? key;

  final String appbarTitle;

  final int itemCount;

  @override
  String toString() {
    return 'MovieGeneratedRouteArgs{key: $key, appbarTitle: $appbarTitle, itemCount: $itemCount}';
  }
}

/// generated route for
/// [_i9.MovieSeasonScreen]
class MovieSeasonRoute extends _i16.PageRouteInfo<void> {
  const MovieSeasonRoute({List<_i16.PageRouteInfo>? children})
      : super(
          MovieSeasonRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieSeasonRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PhoneVerificationScreen]
class PhoneVerificationRoute extends _i16.PageRouteInfo<void> {
  const PhoneVerificationRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PhoneVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneVerificationRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i16.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfileScreen]
class ProfileScreenRoute extends _i16.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SelectedFilmScreen]
class SelectedFilmRoute extends _i16.PageRouteInfo<void> {
  const SelectedFilmRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SelectedFilmRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectedFilmRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignUpScreen]
class SignUpRoute extends _i16.PageRouteInfo<void> {
  const SignUpRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.VideoPlayerScreen]
class VideoPlayerRoute extends _i16.PageRouteInfo<void> {
  const VideoPlayerRoute({List<_i16.PageRouteInfo>? children})
      : super(
          VideoPlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
