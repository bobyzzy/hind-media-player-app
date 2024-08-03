// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/cupertino.dart' as _i26;
import 'package:flutter/material.dart' as _i25;
import 'package:hind_app/dashboard.dart' as _i6;
import 'package:hind_app/features/auth/presentation/pages/phone_verification_screen.dart'
    as _i13;
import 'package:hind_app/features/auth/presentation/pages/sign_up_screen.dart'
    as _i19;
import 'package:hind_app/features/category/presentation/pages/category_by_genre_screen.dart'
    as _i3;
import 'package:hind_app/features/category/presentation/pages/category_navigator_screen.dart'
    as _i4;
import 'package:hind_app/features/category/presentation/pages/category_screen.dart'
    as _i5;
import 'package:hind_app/features/home/domain/entities/stream_entity.dart'
    as _i28;
import 'package:hind_app/features/home/presentation/pages/home_navigation_screen.dart'
    as _i8;
import 'package:hind_app/features/home/presentation/pages/home_screen.dart'
    as _i9;
import 'package:hind_app/features/home/presentation/pages/movie_generated_screen.dart'
    as _i11;
import 'package:hind_app/features/home/presentation/pages/video_player_screen.dart'
    as _i23;
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart'
    as _i27;
import 'package:hind_app/features/playback_details/presentation/pages/playback_details_screen.dart'
    as _i10;
import 'package:hind_app/features/playback_details/presentation/pages/playback_season_screen.dart'
    as _i14;
import 'package:hind_app/features/search/presentation/pages/search_screen.dart'
    as _i16;
import 'package:hind_app/features/user_profile/presentation/pages/auth_profile_screen.dart'
    as _i1;
import 'package:hind_app/features/user_profile/presentation/pages/authorized_profile_navigation.dart'
    as _i2;
import 'package:hind_app/features/user_profile/presentation/pages/edit_profile_screen.dart'
    as _i7;
import 'package:hind_app/features/user_profile/presentation/pages/payment_screen.dart'
    as _i12;
import 'package:hind_app/features/user_profile/presentation/pages/profile_navigation.dart'
    as _i15;
import 'package:hind_app/features/user_profile/presentation/pages/selected_playback_screen.dart'
    as _i17;
import 'package:hind_app/features/user_profile/presentation/pages/settigs_screen.dart'
    as _i18;
import 'package:hind_app/features/user_profile/presentation/pages/subscription_screen.dart'
    as _i20;
import 'package:hind_app/features/user_profile/presentation/pages/unauthorized_profile_navigation.dart'
    as _i21;
import 'package:hind_app/features/user_profile/presentation/pages/unauthorized_profile_screen.dart'
    as _i22;

abstract class $AppRouter extends _i24.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    AuthProfileRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthProfileScreen(),
      );
    },
    AuthorizedProfileNavigator.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthorizedProfileNavigator(),
      );
    },
    CategoryByGenreRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoryByGenreScreen(),
      );
    },
    CategoryNavigationRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryNavigationScreen(),
      );
    },
    CategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryScreenRouteArgs>(
          orElse: () => const CategoryScreenRouteArgs());
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CategoryScreen(key: args.key),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Dashboard(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EditProfileScreen(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeNavigationScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomeScreen(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MovieDetailScreen(),
      );
    },
    MovieGeneratedRoute.name: (routeData) {
      final args = routeData.argsAs<MovieGeneratedRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.MovieGeneratedScreen(
          key: args.key,
          appbarTitle: args.appbarTitle,
          data: args.data,
          itemCount: args.itemCount,
        ),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PaymentScreen(),
      );
    },
    PhoneVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.PhoneVerificationScreen(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    PlaybackSeasonRoute.name: (routeData) {
      final args = routeData.argsAs<PlaybackSeasonRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.PlaybackSeasonScreen(
          key: args.key,
          seasons: args.seasons,
        ),
      );
    },
    ProfileNavigation.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ProfileNavigation(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SearchScreen(),
      );
    },
    SelectedPlaybackRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SelectedPlaybackScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SettingsScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.SignUpScreen(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SubscriptionScreen(),
      );
    },
    UnathorizedProfileNavigator.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.UnathorizedProfileNavigator(),
      );
    },
    UnathorizedProfileRoute.name: (routeData) {
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.UnathorizedProfileScreen(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerRouteArgs>();
      return _i24.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.VideoPlayerScreen(streamEntity: args.streamEntity),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthProfileScreen]
class AuthProfileRoute extends _i24.PageRouteInfo<void> {
  const AuthProfileRoute({List<_i24.PageRouteInfo>? children})
      : super(
          AuthProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthProfileRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthorizedProfileNavigator]
class AuthorizedProfileNavigator extends _i24.PageRouteInfo<void> {
  const AuthorizedProfileNavigator({List<_i24.PageRouteInfo>? children})
      : super(
          AuthorizedProfileNavigator.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizedProfileNavigator';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoryByGenreScreen]
class CategoryByGenreRoute extends _i24.PageRouteInfo<void> {
  const CategoryByGenreRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CategoryByGenreRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryByGenreRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryNavigationScreen]
class CategoryNavigationRoute extends _i24.PageRouteInfo<void> {
  const CategoryNavigationRoute({List<_i24.PageRouteInfo>? children})
      : super(
          CategoryNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryNavigationRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CategoryScreen]
class CategoryScreenRoute extends _i24.PageRouteInfo<CategoryScreenRouteArgs> {
  CategoryScreenRoute({
    _i25.Key? key,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          CategoryScreenRoute.name,
          args: CategoryScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoryScreenRoute';

  static const _i24.PageInfo<CategoryScreenRouteArgs> page =
      _i24.PageInfo<CategoryScreenRouteArgs>(name);
}

class CategoryScreenRouteArgs {
  const CategoryScreenRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'CategoryScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.Dashboard]
class DashboardRoute extends _i24.PageRouteInfo<void> {
  const DashboardRoute({List<_i24.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EditProfileScreen]
class EditProfileRoute extends _i24.PageRouteInfo<void> {
  const EditProfileRoute({List<_i24.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeNavigationScreen]
class HomeNavigationRoute extends _i24.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i24.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HomeScreen]
class HomeScreenRoute extends _i24.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i24.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MovieDetailScreen]
class MovieDetailRoute extends _i24.PageRouteInfo<void> {
  const MovieDetailRoute({List<_i24.PageRouteInfo>? children})
      : super(
          MovieDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MovieGeneratedScreen]
class MovieGeneratedRoute extends _i24.PageRouteInfo<MovieGeneratedRouteArgs> {
  MovieGeneratedRoute({
    _i25.Key? key,
    required String appbarTitle,
    required List<dynamic> data,
    required int itemCount,
    List<_i24.PageRouteInfo>? children,
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

  static const _i24.PageInfo<MovieGeneratedRouteArgs> page =
      _i24.PageInfo<MovieGeneratedRouteArgs>(name);
}

class MovieGeneratedRouteArgs {
  const MovieGeneratedRouteArgs({
    this.key,
    required this.appbarTitle,
    required this.data,
    required this.itemCount,
  });

  final _i25.Key? key;

  final String appbarTitle;

  final List<dynamic> data;

  final int itemCount;

  @override
  String toString() {
    return 'MovieGeneratedRouteArgs{key: $key, appbarTitle: $appbarTitle, data: $data, itemCount: $itemCount}';
  }
}

/// generated route for
/// [_i12.PaymentScreen]
class PaymentRoute extends _i24.PageRouteInfo<void> {
  const PaymentRoute({List<_i24.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PhoneVerificationScreen]
class PhoneVerificationRoute
    extends _i24.PageRouteInfo<PhoneVerificationRouteArgs> {
  PhoneVerificationRoute({
    _i26.Key? key,
    required String phoneNumber,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          PhoneVerificationRoute.name,
          args: PhoneVerificationRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'PhoneVerificationRoute';

  static const _i24.PageInfo<PhoneVerificationRouteArgs> page =
      _i24.PageInfo<PhoneVerificationRouteArgs>(name);
}

class PhoneVerificationRouteArgs {
  const PhoneVerificationRouteArgs({
    this.key,
    required this.phoneNumber,
  });

  final _i26.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneVerificationRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i14.PlaybackSeasonScreen]
class PlaybackSeasonRoute extends _i24.PageRouteInfo<PlaybackSeasonRouteArgs> {
  PlaybackSeasonRoute({
    _i25.Key? key,
    required List<_i27.SeasonsDataEntity> seasons,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          PlaybackSeasonRoute.name,
          args: PlaybackSeasonRouteArgs(
            key: key,
            seasons: seasons,
          ),
          initialChildren: children,
        );

  static const String name = 'PlaybackSeasonRoute';

  static const _i24.PageInfo<PlaybackSeasonRouteArgs> page =
      _i24.PageInfo<PlaybackSeasonRouteArgs>(name);
}

class PlaybackSeasonRouteArgs {
  const PlaybackSeasonRouteArgs({
    this.key,
    required this.seasons,
  });

  final _i25.Key? key;

  final List<_i27.SeasonsDataEntity> seasons;

  @override
  String toString() {
    return 'PlaybackSeasonRouteArgs{key: $key, seasons: $seasons}';
  }
}

/// generated route for
/// [_i15.ProfileNavigation]
class ProfileNavigation extends _i24.PageRouteInfo<void> {
  const ProfileNavigation({List<_i24.PageRouteInfo>? children})
      : super(
          ProfileNavigation.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigation';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SearchScreen]
class SearchRoute extends _i24.PageRouteInfo<void> {
  const SearchRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SelectedPlaybackScreen]
class SelectedPlaybackRoute extends _i24.PageRouteInfo<void> {
  const SelectedPlaybackRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SelectedPlaybackRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectedPlaybackRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SettingsScreen]
class SettingsRoute extends _i24.PageRouteInfo<void> {
  const SettingsRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SignUpScreen]
class SignUpRoute extends _i24.PageRouteInfo<void> {
  const SignUpRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SubscriptionScreen]
class SubscriptionRoute extends _i24.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i24.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i21.UnathorizedProfileNavigator]
class UnathorizedProfileNavigator extends _i24.PageRouteInfo<void> {
  const UnathorizedProfileNavigator({List<_i24.PageRouteInfo>? children})
      : super(
          UnathorizedProfileNavigator.name,
          initialChildren: children,
        );

  static const String name = 'UnathorizedProfileNavigator';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i22.UnathorizedProfileScreen]
class UnathorizedProfileRoute extends _i24.PageRouteInfo<void> {
  const UnathorizedProfileRoute({List<_i24.PageRouteInfo>? children})
      : super(
          UnathorizedProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnathorizedProfileRoute';

  static const _i24.PageInfo<void> page = _i24.PageInfo<void>(name);
}

/// generated route for
/// [_i23.VideoPlayerScreen]
class VideoPlayerRoute extends _i24.PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({
    required _i28.StreamEntity streamEntity,
    List<_i24.PageRouteInfo>? children,
  }) : super(
          VideoPlayerRoute.name,
          args: VideoPlayerRouteArgs(streamEntity: streamEntity),
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const _i24.PageInfo<VideoPlayerRouteArgs> page =
      _i24.PageInfo<VideoPlayerRouteArgs>(name);
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({required this.streamEntity});

  final _i28.StreamEntity streamEntity;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{streamEntity: $streamEntity}';
  }
}
