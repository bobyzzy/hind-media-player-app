// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/search_usecase.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/movies_repository.dart';

class SearchMovies extends SearchUseCase<List<MoviesEntity>, SearchParams> {
  final MoviesRepository repository;
  SearchMovies(this.repository);

  @override
  Future<Either<Failure, List<MoviesEntity>>> call(SearchParams params) async {
    return await repository.searchMovies(params.query);
  }
}

class SearchParams extends Equatable {
  final String query;

  const SearchParams({required this.query});

  @override
  List<Object?> get props => [query];
}
