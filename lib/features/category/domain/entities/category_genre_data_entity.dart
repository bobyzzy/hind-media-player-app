// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CategoryGenreDataEntity extends Equatable {
  final int id;
  final String title;
  final String rating;
  final String thumbnail;
  final int year;
  final String genre_name;
  CategoryGenreDataEntity({
    required this.id,
    required this.title,
    required this.rating,
    required this.thumbnail,
    required this.year,
    required this.genre_name,
  });

  @override
  List<Object?> get props => [id, title, rating, thumbnail, year, genre_name];
}
