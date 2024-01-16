import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';

class CategoryGenreModel extends CategoryGenreEntity {
  CategoryGenreModel({
    required super.id,
    required super.name,
    required super.img,
  });

  factory CategoryGenreModel.fromJson(Map<String, dynamic> json) {
    return CategoryGenreModel(
      id: json['id'],
      name: json['name'],
      img: json['img'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'img': img,
      };
}
