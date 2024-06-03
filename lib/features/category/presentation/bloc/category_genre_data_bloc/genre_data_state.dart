// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';

abstract class CategoryState extends Equatable {}

class CategoryDataLoading extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryDataLoaded extends CategoryState {
  final List<CategoryGenreEntity> genres;
  final List<CategoryDataEntity> movies;
  final List<CategoryDataEntity> series;
  final List<CategoryDataEntity> aboutIndia;
  final List<CategoryDataEntity> allData;

  CategoryDataLoaded({
    required this.genres,
    required this.movies,
    required this.series,
    required this.aboutIndia,
    required this.allData,
  });
  @override
  List<Object?> get props => [
        genres,
        allData,
        movies,
        series,
      ];
}

class CategoryDataError extends CategoryState {
  final String error;

  CategoryDataError(this.error);
  @override
  List<Object?> get props => [error];
}

class GenreDataEmpty extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryConnectionError extends CategoryState {
  @override
  List<Object?> get props => [];
}
