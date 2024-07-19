// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerResponseModelImpl _$$BannerResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerResponseModelImpl(
      id: (json['id'] as num).toInt(),
      movieOrSeriesId: (json['movie_or_series_id'] as num).toInt(),
      bannerType: json['banner_type'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$BannerResponseModelImplToJson(
        _$BannerResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movie_or_series_id': instance.movieOrSeriesId,
      'banner_type': instance.bannerType,
      'image': instance.image,
    };
