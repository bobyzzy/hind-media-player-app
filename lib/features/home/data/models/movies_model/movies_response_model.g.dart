// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesResponseModelImpl _$$MoviesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesResponseModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      rating: json['rating'] as String?,
      year: (json['year'] as num?)?.toInt(),
      genreName: json['genre_name'] as String?,
      shortDescription: json['short_description'] as String?,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$MoviesResponseModelImplToJson(
        _$MoviesResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'rating': instance.rating,
      'year': instance.year,
      'genre_name': instance.genreName,
      'short_description': instance.shortDescription,
      'category': instance.category,
    };
