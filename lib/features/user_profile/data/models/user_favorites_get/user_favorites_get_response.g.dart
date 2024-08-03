// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_favorites_get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFavoritesGetResponseImpl _$$UserFavoritesGetResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoritesGetResponseImpl(
      movie: (json['movie'] as List<dynamic>)
          .map((e) =>
              FavoritePlaybackDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      series: (json['series'] as List<dynamic>)
          .map((e) =>
              FavoritePlaybackDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tvShou: (json['tv_shows'] as List<dynamic>)
          .map((e) =>
              FavoritePlaybackDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      soundtrack: (json['soundtrack'] as List<dynamic>)
          .map((e) =>
              FavoritePlaybackDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserFavoritesGetResponseImplToJson(
        _$UserFavoritesGetResponseImpl instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'series': instance.series,
      'tv_shows': instance.tvShou,
      'soundtrack': instance.soundtrack,
    };

_$FavoritePlaybackDataModelImpl _$$FavoritePlaybackDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoritePlaybackDataModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      rating: json['rating'] as String?,
      duration: json['duration'] as String?,
      year: (json['year'] as num?)?.toInt(),
      genreName: json['genre_name'] as String?,
      category: json['category'] as String,
      thumbnail: json['thumbnail'] as String,
      shortDescription: json['short_description'] as String?,
    );

Map<String, dynamic> _$$FavoritePlaybackDataModelImplToJson(
        _$FavoritePlaybackDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'duration': instance.duration,
      'year': instance.year,
      'genre_name': instance.genreName,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'short_description': instance.shortDescription,
    };
