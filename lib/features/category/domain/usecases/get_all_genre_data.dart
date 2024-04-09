// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';

///[CategoryGetDataByGenre] usecase that extends from[Usecase] generic type with 
///two class body [List<CategoryDataEntity>], and [ParamsByGenre] which instance need 
///to call parameters
class CategoryGetDataByGenre extends Usecase<List<CategoryDataEntity>, ParamsByGenre> {
  final CategoryRepository repository;

  CategoryGetDataByGenre(this.repository);
  @override
  Future<Either<Failure, List<CategoryDataEntity>>> call(ParamsByGenre params) async {
    return await repository.getDataByGenre(params.type,params.subtype,params.id);
  }
}

class ParamsByGenre extends Equatable {
  final String type;
  final String subtype;
  final String id;
  ParamsByGenre({
    required this.type,
    required this.subtype,
    required this.id,
  });
  @override
  List<Object?> get props => [];
}
