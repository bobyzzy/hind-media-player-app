import 'package:hind_app/features/category/domain/entities/category_genre_data_entity.dart';

class CategoryGenreDataModel extends CategoryGenreDataEntity {
  CategoryGenreDataModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
  });

  factory CategoryGenreDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryGenreDataModel(
      id: json['id'],
      title: json["title"],
      rating: json['rating'],
      thumbnail: json['thumbnail'],
      year: json['year'],
      genreName: json['genre_name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'thunbnail': thumbnail,
        'year': year,
        'genre_name': genreName,
      };
}
