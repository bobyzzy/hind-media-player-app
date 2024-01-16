// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_data_entity.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';

abstract class GenreDataState extends Equatable {}

class GenreDataLoading extends GenreDataState {
  @override
  List<Object?> get props => [];
}

class GenreDataLoaded extends GenreDataState {
  final List<CategoryGenreDataEntity> byGenresData;
  final List<CategoryGenreEntity> genres;
  final List<CategoryDataEntity> movies;
  final List<CategoryDataEntity> series;
  final List<CategoryDataEntity> allData;

  GenreDataLoaded({
    required this.byGenresData,
    required this.genres,
    required this.movies,
    required this.series,
    required this.allData,
  });
  @override
  List<Object?> get props => [
        byGenresData,
        genres,
        allData,
        movies,
        series,
      ];


}

class GenreDataError extends GenreDataState {
  final String error;

  GenreDataError(this.error);
  @override
  List<Object?> get props => [error];
}

class CategoryDataByGenre extends GenreDataState {
  final List<CategoryGenreDataEntity> dataByGenre;

  CategoryDataByGenre({required this.dataByGenre});

  @override
  List<Object?> get props => [dataByGenre];
}

class GenreDataEmpty extends GenreDataState {
  @override
  List<Object?> get props => [];
}
