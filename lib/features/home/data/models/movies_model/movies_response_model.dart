// ignore_for_file: invalid_annotation_target

import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_response_model.g.dart';
part 'movies_response_model.freezed.dart';

@freezed
class MoviesResponseModel with _$MoviesResponseModel {
  const factory MoviesResponseModel({
    required int id,
    required String title,
    required String thumbnail,
    String? rating,
    int? year,
    @JsonKey(name: 'genre_name') String? genreName,
    @JsonKey(name: 'short_description') String? shortDescription,
    required String category,
  }) = _MoviesResponseModel;

  factory MoviesResponseModel.fromJson(JSON json) => _$MoviesResponseModelFromJson(json);
}

class MoviesResponseMapper {
  static MoviesResponseEntity moviesResponseMapper(MoviesResponseModel model) =>
      MoviesResponseEntity(
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
