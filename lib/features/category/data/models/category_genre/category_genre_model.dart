import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_genre_model.g.dart';
part 'category_genre_model.freezed.dart';

@freezed
class CategoryGenreModel with _$CategoryGenreModel {
  const factory CategoryGenreModel({
    required int id,
    required String name,
    String? img,
  }) = _CategoryGenreModel;

  factory CategoryGenreModel.fromJson(JSON json) => _$CategoryGenreModelFromJson(json);
}

class CategoryGenreMapper {
  static CategoryGenreEntity mapper(CategoryGenreModel model) =>
      CategoryGenreEntity(id: model.id, name: model.name, img: model.img);
}
