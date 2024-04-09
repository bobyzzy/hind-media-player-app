// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:hind_app/dashboard.dart' as _i4;
import 'package:hind_app/features/auth/presentation/pages/phone_verification_screen.dart'
    as _i12;
import 'package:hind_app/features/auth/presentation/pages/sign_up_screen.dart'
    as _i16;
import 'package:hind_app/features/category/presentation/pages/category_by_genre_screen.dart'
    as _i1;
import 'package:hind_app/features/category/presentation/pages/category_navigator_screen.dart'
    as _i2;
import 'package:hind_app/features/category/presentation/pages/category_screen.dart'
    as _i3;
import 'package:hind_app/features/details_playback/presentation/pages/movie_detail_screen.dart'
    as _i9;
import 'package:hind_app/features/home/domain/entities/stream_entity.dart'
    as _i20;
import 'package:hind_app/features/home/presentation/pages/home_navigation_screen.dart'
    as _i6;
import 'package:hind_app/features/home/presentation/pages/home_screen.dart'
    as _i7;
import 'package:hind_app/features/home/presentation/pages/movie_generated_screen.dart'
    as _i10;
import 'package:hind_app/features/home/presentation/pages/movie_season_screen.dart'
    as _i11;
import 'package:hind_app/features/home/presentation/pages/video_player_screen.dart'
    as _i17;
import 'package:hind_app/features/search/presentation/pages/home_search_screen.dart'
    as _i8;
import 'package:hind_app/features/user_profile/presentation/pages/empty_profile_screen.dart'
    as _i5;
import 'package:hind_app/features/user_profile/presentation/pages/profile_screen.dart'
    as _i14;
import 'package:hind_app/features/user_profile/presentation/pages/profile_screen_navigation.dart'
    as _i13;
import 'package:hind_app/features/user_profile/presentation/pages/selected_films_screen.dart'
    as _i15;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    CategoryByGenreRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CategoryByGenreScreen(),
      );
    },
    CategoryNavigationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoryNavigationScreen(),
      );
    },
    CategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryScreenRouteArgs>(
          orElse: () => const CategoryScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CategoryScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Dashboard(),
      );
    },
    EmptyProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyProfileScreen(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeNavigationScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
      );
    },
    HomeSearchRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeSearchScreen(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MovieDetailScreen(
          key: args.key,
          id: args.id,
          imageUrl: args.imageUrl,
          title: args.title,
          genre: args.genre,
          year: args.year,
          isSeries: args.isSeries,
        ),
      );
    },
    MovieGeneratedRoute.name: (routeData) {
      final args = routeData.argsAs<MovieGeneratedRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.MovieGeneratedScreen(
          key: args.key,
          appbarTitle: args.appbarTitle,
          data: args.data,
          itemCount: args.itemCount,
        ),
      );
    },
    MovieSeasonRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MovieSeasonScreen(),
      );
    },
    PhoneVerificationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PhoneVerificationScreen(),
      );
    },
    ProfileNavigationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfileNavigationScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
    SelectedFilmRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SelectedFilmScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SignUpScreen(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.VideoPlayerScreen(streamEntity: args.streamEntity),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoryByGenreScreen]
class CategoryByGenreRoute extends _i18.PageRouteInfo<void> {
  const CategoryByGenreRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CategoryByGenreRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryByGenreRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryNavigationScreen]
class CategoryNavigationRoute extends _i18.PageRouteInfo<void> {
  const CategoryNavigationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CategoryNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryNavigationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoryScreen]
class CategoryScreenRoute extends _i18.PageRouteInfo<CategoryScreenRouteArgs> {
  CategoryScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          CategoryScreenRoute.name,
          args: CategoryScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoryScreenRoute';

  static const _i18.PageInfo<CategoryScreenRouteArgs> page =
      _i18.PageInfo<CategoryScreenRouteArgs>(name);
}

class CategoryScreenRouteArgs {
  const CategoryScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'CategoryScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.Dashboard]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EmptyProfileScreen]
class EmptyProfileRoute extends _i18.PageRouteInfo<void> {
  const EmptyProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          EmptyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeNavigationScreen]
class HomeNavigationRoute extends _i18.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreen]
class HomeScreenRoute extends _i18.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeSearchScreen]
class HomeSearchRoute extends _i18.PageRouteInfo<void> {
  const HomeSearchRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeSearchRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MovieDetailScreen]
class MovieDetailRoute extends _i18.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    _i19.Key? key,
    required int id,
    required String imageUrl,
    required String title,
    required String genre,
    required int year,
    required bool isSeries,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            id: id,
            imageUrl: imageUrl,
            title: title,
            genre: genre,
            year: year,
            isSeries: isSeries,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const _i18.PageInfo<MovieDetailRouteArgs> page =
      _i18.PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.year,
    required this.isSeries,
  });

  final _i19.Key? key;

  final int id;

  final String imageUrl;

  final String title;

  final String genre;

  final int year;

  final bool isSeries;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, id: $id, imageUrl: $imageUrl, title: $title, genre: $genre, year: $year, isSeries: $isSeries}';
  }
}

/// generated route for
/// [_i10.MovieGeneratedScreen]
class MovieGeneratedRoute extends _i18.PageRouteInfo<MovieGeneratedRouteArgs> {
  MovieGeneratedRoute({
    _i19.Key? key,
    required String appbarTitle,
    required List<dynamic> data,
    required int itemCount,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MovieGeneratedRoute.name,
          args: MovieGeneratedRouteArgs(
            key: key,
            appbarTitle: appbarTitle,
            data: data,
            itemCount: itemCount,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieGeneratedRoute';

  static const _i18.PageInfo<MovieGeneratedRouteArgs> page =
      _i18.PageInfo<MovieGeneratedRouteArgs>(name);
}

class MovieGeneratedRouteArgs {
  const MovieGeneratedRouteArgs({
    this.key,
    required this.appbarTitle,
    required this.data,
    required this.itemCount,
  });

  final _i19.Key? key;

  final String appbarTitle;

  final List<dynamic> data;

  final int itemCount;

  @override
  String toString() {
    return 'MovieGeneratedRouteArgs{key: $key, appbarTitle: $appbarTitle, data: $data, itemCount: $itemCount}';
  }
}

/// generated route for
/// [_i11.MovieSeasonScreen]
class MovieSeasonRoute extends _i18.PageRouteInfo<void> {
  const MovieSeasonRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MovieSeasonRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieSeasonRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PhoneVerificationScreen]
class PhoneVerificationRoute extends _i18.PageRouteInfo<void> {
  const PhoneVerificationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          PhoneVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneVerificationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i18.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileScreenRoute extends _i18.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SelectedFilmScreen]
class SelectedFilmRoute extends _i18.PageRouteInfo<void> {
  const SelectedFilmRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SelectedFilmRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectedFilmRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SignUpScreen]
class SignUpRoute extends _i18.PageRouteInfo<void> {
  const SignUpRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.VideoPlayerScreen]
class VideoPlayerRoute extends _i18.PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({
    required _i20.StreamEntity streamEntity,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          VideoPlayerRoute.name,
          args: VideoPlayerRouteArgs(streamEntity: streamEntity),
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const _i18.PageInfo<VideoPlayerRouteArgs> page =
      _i18.PageInfo<VideoPlayerRouteArgs>(name);
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({required this.streamEntity});

  final _i20.StreamEntity streamEntity;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{streamEntity: $streamEntity}';
  }
}
