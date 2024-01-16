// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_data_entity.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';

class CategoryGetAllGenreData extends Usecase<List<CategoryGenreDataEntity>, ParamsByGenre> {
  final CategoryRepository repository;

  CategoryGetAllGenreData(this.repository);
  @override
  Future<Either<Failure, List<CategoryGenreDataEntity>>> call(ParamsByGenre params) async {
    return await repository.getGenreData();
  }
}

class ParamsByGenre extends Equatable {
  final String type;
  final String query;
  final String id;
  ParamsByGenre({
    required this.type,
    required this.query,
    required this.id,
  });
  @override
  List<Object?> get props => [];
}
