// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:hind_app/features/home/domain/entities/movies_entity.dart';

abstract class SearchState extends Equatable {}

class SearchLoading extends SearchState {
  @override
  List<Object?> get props => [];
}

class SearchDataLoaded extends SearchState {
  final List<MoviesEntity> movies;
  SearchDataLoaded({required this.movies});

  @override
  List<Object?> get props => [movies];
}

class SearchEmpty extends SearchState {
  @override
  List<Object?> get props => [];
}

class SearchDataEmpty extends SearchState {
  @override
  List<Object?> get props => [];
}

class SearchDataError extends SearchState {
  final String error;
  SearchDataError(this.error);

  @override
  List<Object?> get props => [error];
}

class SearchDispose extends SearchState {
  @override
  List<Object?> get props => [];
}

class SearchConnectionError extends SearchState {
  @override
  List<Object?> get props => [];
}
