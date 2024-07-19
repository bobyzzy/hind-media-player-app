// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/home/domain/entities/banner_entity.dart';

part 'banners_response_model.g.dart';
part 'banners_response_model.freezed.dart';

@freezed
class BannerResponseModel with _$BannerResponseModel {
  const factory BannerResponseModel({
    required int id,
    @JsonKey(name: 'movie_or_series_id') required int movieOrSeriesId,
    @JsonKey(name: 'banner_type') required String bannerType,
    required String image,
  }) = _BannerResponseModel;

  factory BannerResponseModel.fromJson(JSON json) => _$BannerResponseModelFromJson(json);
}

class BannerMapper {
  static BannerResponseEntity mapper(BannerResponseModel model) => BannerResponseEntity(
        id: model.id,
        movieOrSeriesId: model.movieOrSeriesId,
        bannerType: model.bannerType,
        thumbnail: model.image,
      );
}

