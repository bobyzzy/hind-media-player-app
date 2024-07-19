import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/features/home/domain/entities/genre_entity.dart';

part 'genres_response_model.g.dart';
part 'genres_response_model.freezed.dart';

@freezed
class GenresResponseModel with _$GenresResponseModel {
  const factory GenresResponseModel({
    required int id,
    required String name,
  }) = _GenresResponseModel;

  factory GenresResponseModel.fromJson(JSON json) => _$GenresResponseModelFromJson(json);
}

class GenresMapper {
  static GenresResponseEntity genresMapper(GenresResponseModel model) =>
      GenresResponseEntity(id: model.id, name: model.name);
}
