// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';

class CategoryGetAllGenre extends Usecase<List<CategoryGenreEntity>, ParamsGenre> {
  final CategoryRepository repository;

  CategoryGetAllGenre(this.repository);

  @override
  Future<Either<Failure, List<CategoryGenreEntity>>> call(ParamsGenre parms) async {
    return await repository.getGenre();
  }
}

class ParamsGenre extends Equatable {
  @override
  List<Object?> get props => [];
}
