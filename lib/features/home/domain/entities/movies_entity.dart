// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MoviesResponseEntity extends Equatable {
  final int id;
  final String title;
  final String thumbnail;
  final String category;
  final String? rating;
  final int? year;
  final String? genreName;
  final String? shortDescription;

  MoviesResponseEntity({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.category,
    required this.year,
    this.rating,
    this.genreName,
    this.shortDescription,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        rating,
        thumbnail,
        year,
        genreName,
        shortDescription,
      ];
}
