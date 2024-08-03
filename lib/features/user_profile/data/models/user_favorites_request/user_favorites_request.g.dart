// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_favorites_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFavoritesRequestModelImpl _$$UserFavoritesRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoritesRequestModelImpl(
      fileCategory: json['file_category'] as String,
      fileId: (json['file_id'] as num).toInt(),
    );

Map<String, dynamic> _$$UserFavoritesRequestModelImplToJson(
        _$UserFavoritesRequestModelImpl instance) =>
    <String, dynamic>{
      'file_category': instance.fileCategory,
      'file_id': instance.fileId,
    };
