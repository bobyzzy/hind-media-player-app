// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesResponseModelImpl _$$SeriesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SeriesResponseModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      rating: json['rating'] as String,
      thumbnail: json['thumbnail'] as String,
      year: (json['year'] as num).toInt(),
      genreName: json['genre_name'] as String,
      shortDescription: json['short_description'] as String?,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$SeriesResponseModelImplToJson(
        _$SeriesResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'genre_name': instance.genreName,
      'short_description': instance.shortDescription,
      'category': instance.category,
    };
