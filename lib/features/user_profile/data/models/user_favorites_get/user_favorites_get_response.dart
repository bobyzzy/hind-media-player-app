// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_get_response.dart';

part 'user_favorites_get_response.freezed.dart';
part 'user_favorites_get_response.g.dart';

@freezed
class UserFavoritesGetResponseModel with _$UserFavoritesGetResponseModel {
  const factory UserFavoritesGetResponseModel({
    required List<FavoritePlaybackDataModel> movie,
    required List<FavoritePlaybackDataModel> series,
    @JsonKey(name: 'tv_shows') required List<FavoritePlaybackDataModel> tvShou,
    required List<FavoritePlaybackDataModel> soundtrack,
  }) = _UserFavoritesGetResponse;

  factory UserFavoritesGetResponseModel.fromJson(JSON json) =>
      _$UserFavoritesGetResponseModelFromJson(json);
}

@freezed
class FavoritePlaybackDataModel with _$FavoritePlaybackDataModel {
  const factory FavoritePlaybackDataModel({
    required int id,
    required String title,
    required String? rating,
    required String? duration,
    required int? year,
    @JsonKey(name: 'genre_name') required String? genreName,
    required String category,
    required String thumbnail,
    @JsonKey(name: 'short_description') required String? shortDescription,
  }) = _FavoritePlaybackDataModel;

  factory FavoritePlaybackDataModel.fromJson(JSON json) =>
      _$FavoritePlaybackDataModelFromJson(json);
}

class UserFavoritesGetMapper {
  static UserFavoritesGetResponseEntity mapper(UserFavoritesGetResponseModel model) {
    return UserFavoritesGetResponseEntity(
      movies: model.movie.map((e) => userFavoriteMapper(e)).toList(),
      series: model.series.map((e) => userFavoriteMapper(e)).toList(),
      tvShou: model.tvShou.map((e) => userFavoriteMapper(e)).toList(),
      soundtrack: model.soundtrack.map((e) => userFavoriteMapper(e)).toList(),
    );
  }

  static FavoritePlaybackDataEntity userFavoriteMapper(FavoritePlaybackDataModel model) =>
      FavoritePlaybackDataEntity(
        id: model.id,
        title: model.title,
        rating: model.rating,
        year: model.year,
        category: model.category,
        duration: model.duration,
        thumbnail: model.thumbnail,
        genreName: model.genreName,
        shortDescription: model.shortDescription,
      );
}
