// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_favorites_delete_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFavoritesDeleteRequestModelImpl
    _$$UserFavoritesDeleteRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$UserFavoritesDeleteRequestModelImpl(
          fileCategory: json['file_category'] as String,
          fileId: (json['file_id'] as num).toInt(),
        );

Map<String, dynamic> _$$UserFavoritesDeleteRequestModelImplToJson(
        _$UserFavoritesDeleteRequestModelImpl instance) =>
    <String, dynamic>{
      'file_category': instance.fileCategory,
      'file_id': instance.fileId,
    };
