// ignore_for_file: invalid_annotation_target

import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'series_response_model.g.dart';
part 'series_response_model.freezed.dart';

@freezed
class SeriesResponseModel with _$SeriesResponseModel {
  const factory SeriesResponseModel({
    required int id,
    required String title,
    required String rating,
    required String thumbnail,
    required int year,
    @JsonKey(name: 'genre_name') required String genreName,
    @JsonKey(name: 'short_description') String? shortDescription,
    required String category,
  }) = _SeriesResponseModel;

  factory SeriesResponseModel.fromJson(JSON json) => _$SeriesResponseModelFromJson(json);
}

class SeriesResponseMapper {
  static SeriesResponseEntity seriesMapper(SeriesResponseModel model) => SeriesResponseEntity(
        id: model.id,
        title: model.title,
        rating: model.rating,
        thumbnail: model.thumbnail,
        year: model.year,
        genreName: model.genreName,
        shortDescription: model.shortDescription,
        category: model.category,
      );
}
