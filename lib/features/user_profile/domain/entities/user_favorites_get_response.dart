// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserFavoritesGetResponseEntity extends Equatable {
  final List<FavoritePlaybackDataEntity> movies;
  final List<FavoritePlaybackDataEntity> series;
  final List<FavoritePlaybackDataEntity> tvShou;
  final List<FavoritePlaybackDataEntity> soundtrack;
  UserFavoritesGetResponseEntity({
    required this.movies,
    required this.series,
    required this.tvShou,
    required this.soundtrack,
  });

  @override
  List<Object> get props => [movies, series, tvShou, soundtrack];
}

class FavoritePlaybackDataEntity extends Equatable {
  final int id;
  final String title;
  final String? rating;
  final String thumbnail;
  final int? year;
  final String? genreName;
  final String category;
  final String? duration;
  final String? shortDescription;
  FavoritePlaybackDataEntity({
    required this.id,
    required this.title,
    required this.rating,
    required this.thumbnail,
    required this.year,
    required this.genreName,
    required this.category,
    required this.duration,
    required this.shortDescription,
  });

  @override
  List<Object> get props {
    return [
      id,
      title,
      rating ?? 'null',
      thumbnail,
      year ?? 'null',
      genreName ?? 'null',
      category,
      duration ?? 'null',
      shortDescription ?? 'null',
    ];
  }
}
