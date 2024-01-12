import 'package:equatable/equatable.dart';

class CategoryMoviesEntity extends Equatable {
  final int id;
  final String title;
  final String rating;
  final String thumbnail;
  final int year;
  final String genreName;

  CategoryMoviesEntity({
    required this.id,
    required this.title,
    required this.rating,
    required this.thumbnail,
    required this.year,
    required this.genreName,
  });

  @override
  List<Object?> get props => [id, title, rating, thumbnail, year, genreName];
}
