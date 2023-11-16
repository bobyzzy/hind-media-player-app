// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) =>
    CollectionModel(
      id: json['id'] as int,
      title: json['title'] as String,
      published_at: json['published_at'] as String,
      last_collected_at: json['last_collected_at'] as String,
      updated_at: json['updated_at'] as String,
      cover_photo: json['cover_photo'],
      user: json['user'],
    );

Map<String, dynamic> _$CollectionModelToJson(CollectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'published_at': instance.published_at,
      'last_collected_at': instance.last_collected_at,
      'updated_at': instance.updated_at,
      'cover_photo': instance.cover_photo,
      'user': instance.user,
    };
