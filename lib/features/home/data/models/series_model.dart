import 'package:hind_app/features/home/domain/entities/series_entity.dart';

class SeriesModel extends SeriesEntity {
  SeriesModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
  });

  factory SeriesModel.fromJson(Map<String, dynamic> json) {
    return SeriesModel(
      id: json['id'],
      title: json['title'],
      rating: json['rating'],
      thumbnail: json["thumbnail"],
      year: json['year'],
      genreName: json['genre_name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        "thumbnail": thumbnail,
        "year": year,
        "genre_name": genreName,
      };
}
