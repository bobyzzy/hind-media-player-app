// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';



///[GetDataByType] usecase that extends from[Usecase] generic type with 
///two class body [List<CategoryDataEntity>], and [ParamsType] which instance need 
///to call parameters
class GetDataByType extends Usecase<List<CategoryDataEntity>, ParamsType> {
  final CategoryRepository repository;

  GetDataByType({required this.repository});
  @override
  Future<Either<Failure, List<CategoryDataEntity>>> call(ParamsType params) async {
    return repository.getDataByType(params.type, params.subtype);
  }
}

class ParamsType extends Equatable {
  final String type;
  final String subtype;
  ParamsType({
    required this.type,
    required this.subtype,
  });

  @override
  List<Object?> get props => [type, subtype];
}
