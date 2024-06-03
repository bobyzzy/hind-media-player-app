import 'package:hind_app/features/search/domain/entities/search_data_entity.dart';

///[SearchDataModel] have factory method to parse datas from API the name of
///factory method is [Searchmodel.fromJson] and this module exteds [SearchDataEntity]
class SearchDataModel extends SearchDataEntity {
  SearchDataModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
    required super.category,
  });

  factory SearchDataModel.fromJson(Map<String, dynamic> json) {
    return SearchDataModel(
      id: json['id'],
      title: json['title'],
      rating: json['rating'],
      thumbnail: json['thumbnail'],
      year: json['year'],
      genreName: json['genre_name'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'thumbnail': thumbnail,
        'year': year,
        'genre_name': genreName
      };
}
