// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDataResponseModelImpl _$$CategoryDataResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDataResponseModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      rating: json['rating'] as String?,
      thumbnail: json['thumbnail'] as String,
      year: (json['year'] as num?)?.toInt(),
      genreName: json['genre_name'] as String?,
      duration: json['duration'] as String?,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$CategoryDataResponseModelImplToJson(
        _$CategoryDataResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'year': instance.year,
      'genre_name': instance.genreName,
      'duration': instance.duration,
      'category': instance.category,
    };
