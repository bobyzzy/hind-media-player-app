// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) => PhotoModel(
      width: json['width'] as int,
      height: json['height'] as int,
      urls: UrlsModel.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'urls': instance.urls,
    };
