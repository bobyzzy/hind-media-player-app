// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'genre_data_bloc.dart';

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
  final List<CategoryDataEntity> soundTrack;
  final List<CategoryDataEntity> tvShou;

  CategoryDataLoaded({
    required this.genres,
    required this.movies,
    required this.series,
    required this.aboutIndia,
    required this.allData,
    required this.soundTrack,
    required this.tvShou,
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
