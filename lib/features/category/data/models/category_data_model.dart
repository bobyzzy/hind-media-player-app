import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';

class CategoryDataModel extends CategoryDataEntity {
  CategoryDataModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
  });

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryDataModel(
      id: json['id'],
      title: json['title'],
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
        'thumbnail': thumbnail,
        'year': year,
        'genre_name': genreName,
      };
}
