// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDataModelImpl _$$SearchDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchDataModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      rating: json['rating'] as String,
      thumbnail: json['thumbnail'] as String,
      year: (json['year'] as num).toInt(),
      genreName: json['genre_name'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$SearchDataModelImplToJson(
        _$SearchDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'genre_name': instance.genreName,
      'category': instance.category,
    };
