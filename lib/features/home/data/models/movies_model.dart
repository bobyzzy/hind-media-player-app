import 'package:hind_app/features/home/domain/entities/movies_entity.dart';

class MoviesModel extends MoviesEntity {
  MoviesModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
        id: json['id'],
        title: json['title'],
        rating: json['rating'],
        thumbnail: json['thumbnail'],
        year: json['year'],
        genreName: json['genre_name']);
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
