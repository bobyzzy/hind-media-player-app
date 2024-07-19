// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_genre_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryGenreModelImpl _$$CategoryGenreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryGenreModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$CategoryGenreModelImplToJson(
        _$CategoryGenreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
    };
