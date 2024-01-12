// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';

abstract class HomePageState extends Equatable {}

class HomePageEmpty extends HomePageState {
  @override
  List<Object?> get props => [];
}

class HomePageConnectionError extends HomePageState {
  @override
  List<Object?> get props => [];
}

class HomePageLoading extends HomePageState {
  @override
  List<Object?> get props => [];
}

class HomePageMoviesLoaded extends HomePageState {
  final List<MoviesEntity> movies;
  final List<SeriesEntity> series;

  HomePageMoviesLoaded(this.movies, this.series);

  @override
  List<Object?> get props => [movies, series];
}

class HomePageSeriesLoaded extends HomePageState {
  final List<SeriesEntity> series;

  HomePageSeriesLoaded(this.series);

  @override
  List<Object?> get props => [series];
}

class HomePageError extends HomePageState {
  final String message;

  HomePageError(this.message);

  @override
  List<Object?> get props => [message];
}

class HomePageSearch extends HomePageState {
  final List<MoviesEntity> movies;
  HomePageSearch({required this.movies});

  @override
  List<Object?> get props => [];
}
