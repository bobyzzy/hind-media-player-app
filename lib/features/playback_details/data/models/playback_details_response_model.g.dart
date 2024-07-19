// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaybackDetailsResponseModelImpl _$$PlaybackDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaybackDetailsResponseModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      duration: json['duration'] as String?,
      rating: json['rating'] as String?,
      year: (json['year'] as num?)?.toInt(),
      genreName: json['genre_name'] as String?,
      description: json['short_description'] as String?,
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => SeasonsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) =>
              PlaybackTrailersDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaybackDetailsResponseModelImplToJson(
        _$PlaybackDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'duration': instance.duration,
      'rating': instance.rating,
      'year': instance.year,
      'genre_name': instance.genreName,
      'short_description': instance.description,
      'seasons': instance.seasons,
      'trailers': instance.trailers,
    };

_$SeasonsDataModelImpl _$$SeasonsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SeasonsDataModelImpl(
      number: (json['number'] as num).toInt(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeasonsDataModelImplToJson(
        _$SeasonsDataModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'episodes': instance.episodes,
    };

_$EpisodeModelImpl _$$EpisodeModelImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeModelImpl(
      number: (json['number'] as num).toInt(),
      title: json['title'] as String,
      file: json['file'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$EpisodeModelImplToJson(_$EpisodeModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'file': instance.file,
      'thumbnail': instance.thumbnail,
    };

_$PlaybackTrailersDataModelImpl _$$PlaybackTrailersDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaybackTrailersDataModelImpl(
      url: json['url'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$PlaybackTrailersDataModelImplToJson(
        _$PlaybackTrailersDataModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };
