import 'package:hind_app/features/home/domain/entities/genre_entity.dart';

class GenresModel extends GenreEntity {
  GenresModel({
    required super.id,
    required super.name,
  });

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(id: json['id'], name: json['name']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
