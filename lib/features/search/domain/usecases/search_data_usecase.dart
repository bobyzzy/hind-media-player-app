// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/search_usecase.dart';
import 'package:hind_app/features/search/domain/entities/search_data_entity.dart';
import 'package:hind_app/features/search/domain/repositories/search_repository.dart';

class SearchDataUsecase extends SearchUseCase<List<SearchDataEntity>, SearchParams> {
  final SearchDataRepository repository;
  SearchDataUsecase(this.repository);

  @override
  Future<Either<Failure, List<SearchDataEntity>>> call(SearchParams params) async {
    return await repository.searchPlaybacks(params.query);
  }
}

class SearchParams extends Equatable {
  final String query;

  const SearchParams({required this.query});

  @override
  List<Object?> get props => [query];
}
