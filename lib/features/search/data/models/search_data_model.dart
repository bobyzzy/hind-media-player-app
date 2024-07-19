// ignore_for_file: invalid_annotation_target

import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/search/domain/entities/search_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///[SearchDataModel] have factory method to parse datas from API the name of
///factory method is [Searchmodel.fromJson] and this module exteds [SearchDataEntity]

part "search_data_model.g.dart";
part "search_data_model.freezed.dart";

@freezed
class SearchDataModel with _$SearchDataModel {
  const factory SearchDataModel({
    required int id,
    required String title,
    required String rating,
    required String thumbnail,
    required int year,
    @JsonKey(name: 'genre_name') required String genreName,
    required String category,
  }) = _SearchDataModel;

  factory SearchDataModel.fromJson(JSON json) => _$SearchDataModelFromJson(json);
}

class SearchMapper {
  static SearchDataEntity mapper(SearchDataModel model) => SearchDataEntity(
        id: model.id,
        title: model.title,
        rating: model.rating,
        thumbnail: model.thumbnail,
        year: model.year,
        genreName: model.genreName,
        category: model.category,
      );
}

// class SearchDataModel extends SearchDataEntity {
//   SearchDataModel({
//     required super.id,
//     required super.title,
//     required super.rating,
//     required super.thumbnail,
//     required super.year,
//     required super.genreName,
//     required super.category,
//   });

//   factory SearchDataModel.fromJson(Map<String, dynamic> json) {
//     return SearchDataModel(
//       id: json['id'],
//       title: json['title'],
//       rating: json['rating'],
//       thumbnail: json['thumbnail'],
//       year: json['year'],
//       genreName: json['genre_name'],
//       category: json['category'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'title': title,
//         'rating': rating,
//         'thumbnail': thumbnail,
//         'year': year,
//         'genre_name': genreName
//       };
// }
