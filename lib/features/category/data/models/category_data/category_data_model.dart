// ignore_for_file: invalid_annotation_target

import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';

part 'category_data_model.g.dart';
part 'category_data_model.freezed.dart';

@freezed
class CategoryDataResponseModel with _$CategoryDataResponseModel {
  const factory CategoryDataResponseModel({
    required int id,
    required String title,
    required String? rating,
    required String thumbnail,
    required int? year,
    @JsonKey(name: 'genre_name') String? genreName,
    String?  duration,
    required String category,
  }) = _CategoryDataResponseModel;

  factory CategoryDataResponseModel.fromJson(JSON json) =>
      _$CategoryDataResponseModelFromJson(json);
}

class CategoryDataMapper {
  static CategoryDataEntity mapper(CategoryDataResponseModel model) => CategoryDataEntity(
        id: model.id,
        title: model.title,
        rating: model.rating,
        thumbnail: model.thumbnail,
        year: model.year,
        genreName: model.genreName,
        category: model.category,
        duration: model.duration,
      );
}
