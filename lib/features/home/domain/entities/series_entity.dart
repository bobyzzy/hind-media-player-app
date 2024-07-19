// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SeriesResponseEntity extends Equatable {
  final int id;
  final String title;
  final String rating;
  final String thumbnail;
  final int year;
  final String genreName;
  final String? shortDescription;
  final String category;
  SeriesResponseEntity({
    required this.id,
    required this.title,
    required this.rating,
    required this.thumbnail,
    required this.year,
    required this.genreName,
    required this.shortDescription,
    required this.category,
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
        category,
      ];
}
